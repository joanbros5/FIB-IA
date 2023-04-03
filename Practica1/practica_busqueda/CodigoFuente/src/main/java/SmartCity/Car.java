package SmartCity;

import java.util.*;

import IA.Comparticion.*;


/**
 * @author joan
 * Class that contains the attributes and methods related to cars
 */
public class Car {

    //-----Attributes
    Usuario Driver;
    Usuario FirstPassanger;
    Usuario SecondPassanger;
    //-----Constructors:

    public Car(Usuario d) {
        Driver = d;
        FirstPassanger = null;
        SecondPassanger = null;
    }
    public Car(Usuario u1, Usuario u2, Usuario u3) {
        if (u1 != null)
            this.Driver = new Usuario(u1.getCoordOrigenX(), u1.getCoordOrigenY(), u1.getCoordDestinoX(), u1.getCoordDestinoY(), true);
        else this.Driver = null;
        if (u2 != null)
            this.FirstPassanger = new Usuario(u2.getCoordOrigenX(), u2.getCoordOrigenY(), u2.getCoordDestinoX(), u2.getCoordDestinoY(), false);
        else this.FirstPassanger = null;
        if (u3 != null)
            this.SecondPassanger = new Usuario(u3.getCoordOrigenX(), u3.getCoordOrigenY(), u3.getCoordDestinoX(), u3.getCoordDestinoY(), false);
        else this.SecondPassanger = null;
    }

    //Constructor with parameters

    //-----Getters:
    public int getPassengersSize() {
        if(FirstPassanger == null)
            return 0;
        else if(SecondPassanger == null)
            return 1;
        else
            return 2;
    }
    public Usuario getDriver() { return Driver; }
    public Usuario get_i_passenger(int i) {
        if(i == 0)
            return FirstPassanger;
        else if(i == 1)
            return SecondPassanger;
        else
            return null;
    }
    public Usuario getValidPassanger(ArrayList<Usuario> futurePassangers, String mode){
        Usuario u = null;
        int i = 0;
        while (i < futurePassangers.size()) {

            if (("Ordered").equals(mode))
                u = futurePassangers.get(i++);
            else
                u = futurePassangers.get(getRandomIndex(futurePassangers.size()));

            if (isValidToAdd(u)) {
                break;
            }
            ++i;
        }
        if (i == futurePassangers.size()) {
            return null;
        }
        return u;
    }
    public int getDistance(){
        ArrayList<Pos> arrayPos = new ArrayList<Pos>();

        arrayPos.add(getOrigin(Driver));

        if (FirstPassanger != null)
            arrayPos.add(getOrigin(FirstPassanger));

        if (SecondPassanger != null)
            arrayPos.add(getOrigin(SecondPassanger));

        if (FirstPassanger != null)
            arrayPos.add(getDestiny(FirstPassanger));

        if (SecondPassanger != null)
            arrayPos.add(getDestiny(SecondPassanger));

        arrayPos.add(getDestiny(Driver));

        return calculateDistanceArrayPos(arrayPos);
    }
    public int getDistanceWithNewPassanger(Usuario u){
        if (SecondPassanger != null) return -1;                 //No hi ha espai per ell
        else{
            ArrayList<Pos> arrayPos = new ArrayList<Pos>();

            arrayPos.add(getOrigin(Driver));

            if (FirstPassanger != null) {
                arrayPos.add(getOrigin(FirstPassanger));
            }

            arrayPos.add(getOrigin(u));

            if (FirstPassanger != null) {
                arrayPos.add(getDestiny(FirstPassanger));
            }

            arrayPos.add(getDestiny(u));
            arrayPos.add(getDestiny(Driver));

            return calculateDistanceArrayPos(arrayPos);
        }
    }
    public Pos getOrigin(Usuario u){
        return new Pos(u.getCoordOrigenX(), u.getCoordOrigenY());
    }
    public Pos getDestiny(Usuario u){
        return new Pos(u.getCoordDestinoX(), u.getCoordDestinoY());
    }
    public boolean isValidToAdd(Usuario u){
        if(SecondPassanger != null || hasUser(u))
            return false;
        else {
            int newDistance = getDistanceWithNewPassanger(u);
            return (newDistance != -1 && newDistance <= 300);
        }
    }
    public boolean hasUser(Usuario u) {
        if (FirstPassanger != null) {
            if (FirstPassanger.getCoordOrigenX() == u.getCoordOrigenX() && FirstPassanger.getCoordOrigenY() == u.getCoordOrigenY())
                return true;
        }
        else if (SecondPassanger != null){
                return SecondPassanger.getCoordOrigenX() == u.getCoordOrigenX() && SecondPassanger.getCoordOrigenY() == u.getCoordOrigenY();
        }
        return false;
    }

    //-----Setters:
    public boolean addPassenger(Usuario u) {	//We add both origin and destiny to the movements the car will have to do
        if (u != null) {
            if (isValidToAdd(u)) {
                if (FirstPassanger != null) {
                    SecondPassanger = u;
                } else {
                    FirstPassanger = u;
                }
                return true;
            }
            else return false;
        }
        else
            return false;
    }
    public boolean removePassenger(Usuario u) {	//We add both origin and destiny to the movements the car will have to do
        if (SecondPassanger == u) {
            SecondPassanger = null;
            return true;
        }
        else if (FirstPassanger == u){
            FirstPassanger = SecondPassanger;
            SecondPassanger = null;
            return true;
        }
        else
            return false;
    }

    //-----Operations:

    //Swap passengers
    public void swapOrder() {
        Usuario auxPassanger = FirstPassanger;
        FirstPassanger = SecondPassanger;
        SecondPassanger = auxPassanger;
    }

    //Returns the sum of time to drive all passengers to their destination

    //Car print
    public void printCar() {

        System.out.println("Driver: " + Driver.getCoordOrigenX() + " " + Driver.getCoordOrigenY());
        System.out.println("Driver destination: " + Driver.getCoordDestinoX() + " " + Driver.getCoordDestinoY());

        if (FirstPassanger != null){
            System.out.println("Passengers (" + getPassengersSize() + "):");
            printPassanger(FirstPassanger);
            if (SecondPassanger != null)
                printPassanger(SecondPassanger);
        }
        else
            System.out.println("Empty Passengers");

        System.out.print("Distance: " + getDistance());
        System.out.println();
    }

    //privates
    private int calculateDistanceArrayPos (ArrayList<Pos> arrayPos){

        int result = 0;
        for (int i = 1; i < arrayPos.size(); i++)
            result += manhattanDistance(arrayPos.get(i-1), arrayPos.get(i));

        return result;

    }
    private int manhattanDistance(Pos previouspos, Pos targetpos) {
        return Math.abs(targetpos.getX()-previouspos.getX())+Math.abs(targetpos.getY()-previouspos.getY());
    }
    private void printPassanger (Usuario u){
        System.out.println("    Origin: " + u.getCoordOrigenX() + " " + u.getCoordOrigenY() + " Destination: " + u.getCoordDestinoX() + " " + u.getCoordDestinoY());
    }
    private int getRandomIndex(int size){
        return (int)Math.floor(Math.random() * (size - 1 + 1) + 0);
    }

}