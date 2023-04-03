package SmartCity;

import java.io.BufferedWriter;
import java.io.PrintWriter;
import java.util.*;
import IA.Comparticion.Usuarios;
import aima.search.framework.Problem;
import aima.search.framework.Search;
import aima.search.framework.SearchAgent;
import aima.search.informed.HillClimbingSearch;
import aima.search.informed.SimulatedAnnealingSearch;
import java.util.Calendar;
import java.io.FileWriter;

public class Main {

    static CarSet finalCS;
    public static void main(String[] args) {

        System.out.println("Bon dia,");
        System.out.println("WHAT DO YOU WANT TO DO?");

        System.out.println("PRINT 0 - FIRST EXEPERIMENT OF SOLUTION INIT");
        System.out.println("PRINT 1 - SECOND EXEPERIMENT OF SOLUTION INIT");
        System.out.println("PRINT 2 - EXEPERIMENT OF INPUT SIZE");
        System.out.println("PRINT 3 - NORMAL RUN");

        Scanner n = new Scanner(System.in);
        int toDo = n.nextInt();

        if(toDo != 3) {

            System.out.println("Los resultados se guardaran en result.txt");
            String filename = "result.txt";

            if (toDo == 0)
                runExperimentInitSol(filename, 0);
            else if (toDo == 1)
                runExperimentInitSol(filename, 1);
            else if (toDo == 2)
                runExperiment2(filename);
        }
        else
            runNormalExecution();

    }
    private static void runNormalExecution() {

        //Ask how many users are in the app, how many of them are drivers and the seed of the rng
        Scanner n = new Scanner(System.in);
        System.out.println("How many people do you to organize?");
        int n_users = n.nextInt();
        System.out.println("How many drivers do you have?");
        int n_cond = n.nextInt();
        System.out.println("Introduce una seed");
        int seed = n.nextInt();

        Usuarios users = new Usuarios(n_users, n_cond, seed);
        CarSet CS = new CarSet(users);

        System.out.println("What tipe of initialization do you prefer?");
        System.out.println("PRINT 0 - ORDERED INITIALIZATION");
        System.out.println("PRINT 1 - RANDOM INITIALIZATION");
        System.out.println("PRINT 2 - GREEDY INITIALIZATION");
        int mode = n.nextInt();

        if(mode == 0) {
            System.out.println("======ORDERED INITIALIZATION======");
            CS.generateInitSol(0);
        }
        else if(mode == 1) {
            System.out.println("======RANDOM INITIALIZATION======");
            CS.generateInitSol(1);
        }
        else {
            //CS2.printAllCars();
            System.out.println("======GREEDY INITIALIZATION======");
            CS.generateInitSol(2);
        }

        System.out.println("Introduce el metodo de busqueda (HC / SA)");
        char option = n.next().charAt(0);

        Calendar Time0 = null;
        Calendar Time1 = null;
        long startTime, endTime;

        Time0 = Calendar.getInstance();
        startTime = Time0.getTimeInMillis();

        if (option == 'H')
            finalCS = SmartCityHillClimbing(CS);
        else
            finalCS = SmartCitySimulatedAnnealing(CS, 100000, 1000 ,10 , 0.01);

        Time1 = Calendar.getInstance();
        endTime = Time1.getTimeInMillis();

        if (finalCS != null) {
            finalCS.printAllCars();
            System.out.println("Final Total Distance " + finalCS.getTotalDistance());
            System.out.println("Final Total Cars " + finalCS.getTotalCars());
            System.out.println("Execution Time " + (endTime - startTime));
        }
    }
    private static void runExperimentInitSol(String filename, int mode) {

        Scanner n = new Scanner(System.in);

        System.out.println("How many people do you to organize?");
        int n_users = n.nextInt();
        System.out.println("How many drivers do you have?");
        int n_cond = n.nextInt();
        System.out.println("Introduce how many experiments");
        int n_experiments = n.nextInt();

        ArrayList<String> outputOrderedExperiments = new ArrayList<String>();
        outputOrderedExperiments.add("Execute Ordered Case");
        ArrayList<String> outputRandomExperiments = new ArrayList<String>();
        outputRandomExperiments.add("Execute Random Case");
        ArrayList<String> outputGreedyExperiments = new ArrayList<String>();
        outputGreedyExperiments.add("Execute Greedy Case");

        for (int i = 0; i < n_experiments; i++) {

            int seed = (int) Math.floor(Math.random() * (1000 - 1 + 1) + 0);
            Usuarios users = new Usuarios(n_users, n_cond, seed);

            if(mode == 0) {
                experimentSolInitOtherCase(users, 0, outputOrderedExperiments);
                experimentSolInitRandomCase(users, outputRandomExperiments);
                experimentSolInitOtherCase(users, 2, outputGreedyExperiments);
            }
            else {
                experimentInfluenceSolInitToResultOtherCase(users, 0, outputOrderedExperiments);
                experimentInfluenceSolInitToResultRandomCase(users, outputRandomExperiments);
                experimentInfluenceSolInitToResultOtherCase(users, 2, outputGreedyExperiments);
            }

        }

        saveOutputs(outputOrderedExperiments, filename);
        saveOutputs(outputRandomExperiments, filename);
        saveOutputs(outputGreedyExperiments, filename);

    }
    private static void runExperiment2(String filename) {

        ArrayList<String> outputExperiment = new ArrayList<>();

        for(int n_users = 100; n_users < 401; n_users += 100){

            int n_cond = (int)(n_users*0.4);

            for (int i = 0; i < 100; i++) {
                int seed = (int)Math.floor(Math.random() * (1000 - 1 + 1) + 0);
                Usuarios users = new Usuarios(n_users, n_cond, seed);
                outputExperiment.add(n_users+","+experimentInputSizeGreedyCase(users));
            }

            saveOutputs(outputExperiment, filename);
        }

    }
    private static void experimentSolInitOtherCase(Usuarios users, int mode, ArrayList<String> output){

        int improveCars = 0;
        int startDistance = 0;
        int countTime = 0;


        Calendar Time0, Time1 = null;
        long startTime, endTime;
        Time0 = Calendar.getInstance();
        startTime = Time0.getTimeInMillis();

        CarSet CS = new CarSet(users);
        CS.generateInitSol(mode);

        Time1 = Calendar.getInstance();
        endTime = Time1.getTimeInMillis();

        improveCars = CS.getTotalCars();
        startDistance = CS.getTotalDistance();
        countTime = (int) (endTime - startTime);

        output.add(improveCars+","+startDistance+","+countTime);

    }
    private static void experimentSolInitRandomCase(Usuarios users, ArrayList<String> output){

        int countCars = 0;
        int countDistance = 0;
        int countTime = 0;

        for (int i = 0; i < 5; i++) {

            Calendar Time0, Time1 = null;
            long startTime, endTime;
            Time0 = Calendar.getInstance();
            startTime = Time0.getTimeInMillis();

            CarSet CS = new CarSet(users);
            CS.generateInitSol(2);

            Time1 = Calendar.getInstance();
            endTime = Time1.getTimeInMillis();

            countCars += CS.getTotalCars();
            countDistance += CS.getTotalDistance();
            countTime += (int) (endTime - startTime);

        }

        int avgCars = countCars/5;
        int avgDistance = countDistance/5;
        int avgTime = countTime/5;

        output.add(avgCars+","+avgDistance+","+avgTime);

    }
    private static void experimentInfluenceSolInitToResultOtherCase(Usuarios users, int mode, ArrayList<String> output){

        int countCars = 0;
        int countDistance = 0;
        int countTime = 0;

        CarSet CS = new CarSet(users);
        CS.generateInitSol(mode);
        Calendar Time0, Time1 = null;
        CarSet finalCS = null;
        long startTime, endTime;
        Time0 = Calendar.getInstance();
        startTime = Time0.getTimeInMillis();
        finalCS = SmartCityHillClimbing(CS);
        Time1 = Calendar.getInstance();
        endTime = Time1.getTimeInMillis();

        if (finalCS != null) {
            countCars = finalCS.getTotalCars();
            countDistance = finalCS.getTotalDistance();
            countTime = (int) (endTime - startTime);
        }

        output.add(countCars+","+countDistance+","+countTime);

    }
    private static void experimentInfluenceSolInitToResultRandomCase(Usuarios users, ArrayList<String> output){

        int countCars = 0;
        int countDistance = 0;
        int countTime = 0;

        for (int i = 0; i < 5; i++) {

            CarSet CS = new CarSet(users);
            CS.generateInitSol(1);
            Calendar Time0, Time1 = null;
            CarSet finalCS = null;
            long startTime, endTime;
            //if (option == 'H') {
            Time0 = Calendar.getInstance();
            startTime = Time0.getTimeInMillis();
            finalCS = SmartCityHillClimbing(CS);
            Time1 = Calendar.getInstance();
            endTime = Time1.getTimeInMillis();

            if (finalCS != null) {
                countTime += (int) (endTime - startTime);
                countCars += finalCS.getTotalCars();
                countDistance += finalCS.getTotalDistance();
            }
            countTime += (int) (endTime - startTime);
        }

        int avgCars = countCars/5;
        int avgDistance = countDistance/5;
        int avgTime = countTime/5;

        output.add(avgCars+","+avgDistance+","+avgTime);

    }
    private static int experimentInputSizeGreedyCase(Usuarios users){

        CarSet CS = new CarSet(users);
        CS.generateInitSol(2);
        Calendar Time0, Time1 = null;
        CarSet finalCS = null;
        long startTime, endTime;
        Time0 = Calendar.getInstance();
        startTime = Time0.getTimeInMillis();
        finalCS = SmartCityHillClimbing(CS);
        Time1 = Calendar.getInstance();
        endTime = Time1.getTimeInMillis();

        if (finalCS != null) {
            return (int) (endTime - startTime);
        }
        else
            return 0;
    }

    private static CarSet SmartCityHillClimbing(CarSet state) {
        try {
            Problem problem;
            /*if (optionHeuristic == 1)*/ problem = new Problem(state, new SmartCitySuccesorFunction(), new SmartCityGoalTest(), new SmartCityHeuristicFunction());
            //else if (optionHeuristic == 2) problem = new Problem(state, new SmartCitySuccesorFunction(), new SmartCityGoalTest(), new SmartCityHeuristicFunction2());

            Search search = new HillClimbingSearch();
            SearchAgent agent = new SearchAgent(problem, search);

            System.out.println("======PROGRAM ENDED======");
            System.out.println("Total actions: " + agent.getActions().size());

            SmartCityGoalTest test = new SmartCityGoalTest();

            System.out.println("isGoalState: " + test.isGoalState(search.getGoalState()));

            return (CarSet) search.getGoalState();
        }
        catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
    private static CarSet SmartCitySimulatedAnnealing(CarSet state, int steps, int stiter, int k, double lamb) {
        try {
            Problem problem;
            problem = new Problem(state, new SmartCitySuccesorFunction(), new SmartCityGoalTest(), new SmartCityHeuristicFunction());
            Search search = new SimulatedAnnealingSearch(steps, stiter, k, lamb);
            SearchAgent agent = new SearchAgent(problem, search);

            SmartCityGoalTest test = new SmartCityGoalTest();

            return (CarSet) search.getGoalState();
        }
        catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private static void saveOutputs(ArrayList<String> output, String filename){
        for (String s : output)
            saveRecord(s, filename);
    }

    private static void saveRecord(String line, String filename) {


        try {
            FileWriter fw = new FileWriter(filename, true);
            BufferedWriter bw = new BufferedWriter(fw);
            PrintWriter pw = new PrintWriter(bw);
            pw.println(line);
            pw.flush();
            pw.close();

            System.out.println("Record saved");
        } catch (Exception e) {
            System.out.println("Sth go wrong");
        }

    }
}