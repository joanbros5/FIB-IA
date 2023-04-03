package SmartCity;

import java.util.*;


import IA.Comparticion.Usuarios;
import IA.Comparticion.Usuario;

import static java.lang.System.exit;
import static java.lang.System.setOut;


public class CarSet {

    //-----Attributes
    private ArrayList<Car> allCars;
    private Usuarios users;
    private int totalActions;

    //-----Constructors

    //Empty constructor
    public CarSet(Usuarios users_in){
        allCars = new ArrayList<>();
        users = users_in;
    }
    public CarSet(ArrayList<Car> cars, Usuarios newUsers) {
        ArrayList<Car> tmp = new ArrayList<>();
        for (int i = 0; i < cars.size(); ++i) {
            tmp.add(new Car(cars.get(i).getDriver(), cars.get(i).get_i_passenger(0), cars.get(i).get_i_passenger(1)));
        }
        allCars = tmp;
        users = newUsers;
    }

    //Getters
    public ArrayList<Car> getAllCars() {
        ArrayList<Car> tmp = new ArrayList<>();
        for (int i = 0; i < allCars.size(); ++i) {
            tmp.add(new Car(allCars.get(i).getDriver(), allCars.get(i).get_i_passenger(0), allCars.get(i).get_i_passenger(1)));
        }
        return tmp;
    }
    public Usuarios getAllUsers() {
        return users;
    }
    public int getUsersSize() {return users.size();}
    public int getNumberOfCars() { return allCars.size(); }
    public Car getCarI(int i) { return allCars.get(i); }
    public int getTotalDistance(){
        int total = 0;

        for (int i = 0; i < allCars.size(); ++i) {
            total += getCarI(i).getDistance();
        }

        return total;
    }
    public int getTotalCars(){ return allCars.size(); }
    public boolean isValid(){
        for(Car c : allCars) {
            if (c.getDistance() > 300) {
                return false;
            } else if (c.getPassengersSize() > 3) {
                return false;
            }
        }
        return true;
    }
    public boolean noUsersRepetition(){
        boolean result = true;

        for (int i = 0; i < users.size(); i++) {

            Usuario u = users.get(i);
            int hasAppear = 0;
            for (Car c : allCars){
                if (c.hasUser(u)){
                    ++hasAppear;
                }
            }
            if(hasAppear != 1)
                result = false;
            //System.out.println("User " + i  + " have appear " + hasAppear + " times");
        }
        return result;
    }

    //Print
    public void printAllCars(){
        for(int i = 0; i < allCars.size(); ++i) {
            System.out.println("--Car " + i + ":");
            allCars.get(i).printCar();
        }
        System.out.println("-----");
    }

    //GenereteInitSolutino Code and Functions
    public void generateInitSol(int mode) {
        ArrayList<Car> initCars = new ArrayList<>(users.size());
        ArrayList<Usuario> futurePassangers = new ArrayList<Usuario>();

        for (Usuario u : users) {
            if (u.isConductor())
                initCars.add(new Car(u));
            else
                futurePassangers.add(u);
        }
        if (mode == 0)
            InitCars(initCars,futurePassangers, "Ordered");
        else if (mode == 1)
            InitCars(initCars,futurePassangers, "Random");
        else if (mode == 2)
            algorithmicInit(initCars, futurePassangers);

        allCars = initCars;

    }
    private void InitCars(ArrayList<Car> initCars, ArrayList<Usuario> futurePassangers, String mode) {

        for (Car c : initCars) {
            Usuario u = c.getValidPassanger(futurePassangers, mode);
            if (c.addPassenger(u)) {
                futurePassangers.remove(u);
            }
        }

        for (Car c : initCars) {
            Usuario u = c.getValidPassanger(futurePassangers, mode);
            if (c.addPassenger(u)) {
                futurePassangers.remove(u);
            }
        }
        for (Usuario u : futurePassangers) {
            Car c = new Car(u);
            initCars.add(c);
        }
        futurePassangers.clear();
    }
    private void algorithmicInit(ArrayList<Car> initCars, ArrayList<Usuario> futurePassangers){

        for (Car c : initCars){
            if (!futurePassangers.isEmpty()) {
                Usuario u = bestPassanger(c, futurePassangers);
                if(c.addPassenger(u))
                    futurePassangers.remove(u);
            }
        }

        for (Usuario u : futurePassangers) {
            Car c = new Car(u);
            initCars.add(c);
        }
        futurePassangers.clear();
    }
    private Usuario bestPassanger(Car c, ArrayList<Usuario> futurePassangers){

        int bestValue = 10000;
        Usuario bestPass = null;

        for (Usuario u : futurePassangers){
            int currentValue = c.getDistanceWithNewPassanger(u);
            if (currentValue < 301 && bestValue > currentValue){
                bestValue = currentValue;
                bestPass = u;
            }
        }

        return bestPass;
    }


    //-----Operators
    public boolean makeDriverCarIPassangerCarJ (Car aloneCar, Car newCar){
        if (newCar.addPassenger(aloneCar.getDriver())){
            allCars.remove(aloneCar);
            return true;
        }
        else
            return false;
    }

}