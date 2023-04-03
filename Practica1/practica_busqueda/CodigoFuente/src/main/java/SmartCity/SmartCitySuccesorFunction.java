package SmartCity;

import aima.search.framework.Successor;
import aima.search.framework.SuccessorFunction;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import IA.Comparticion.Usuario;

public class SmartCitySuccesorFunction implements SuccessorFunction {

    @Override
    public List getSuccessors(Object n) {

        CarSet state = (CarSet) n;
        ArrayList<Successor> setOfSuccessors = new ArrayList();

        //Swap the order of passangers in a car
        swapOrderInCar(state, setOfSuccessors);
        //Move a passanger from a car to another car
        movePassangerToAnotherCar(state, setOfSuccessors);
        //Eliminate alone drivers if able
        makeDriverToPassanger(state, setOfSuccessors);

        ArrayList<Successor> setOfValidSuccessors = new ArrayList<>();
        for (Successor s : setOfSuccessors) {
            CarSet CS = (CarSet) s.getState();
            if (CS.isValid())
                setOfValidSuccessors.add(s);

        }

        return setOfValidSuccessors;
    }

    private static void swapOrderInCar(CarSet state, ArrayList<Successor> setOfSuccessors) {

        for (int i = 0; i < state.getNumberOfCars(); ++i) {

            CarSet temp_state = new CarSet(state.getAllCars(), state.getAllUsers());
            temp_state.getCarI(i).swapOrder();

            StringBuffer s = new StringBuffer();
            s.append("Swap inside Car " + i);
            setOfSuccessors.add(new Successor(s.toString(), temp_state));

        }
    }

    private void movePassangerToAnotherCar(CarSet state, ArrayList<Successor> setOfSuccessors) {
        for (int i = 0; i < state.getNumberOfCars(); ++i) {
            for (int j = 0; j < state.getNumberOfCars(); ++j) {
                if (i != j) {
                    for (int m = 0; m < state.getCarI(i).getPassengersSize(); ++m) {

                        CarSet temp_state = new CarSet(state.getAllCars(), state.getAllUsers());
                        Usuario userMoved = temp_state.getCarI(i).get_i_passenger(m);
                        Car carOrigin = temp_state.getCarI(i);
                        Car carDest = temp_state.getCarI(j);

                        if (carDest.getPassengersSize() < 2 && carOrigin.getPassengersSize() > 0 && carOrigin.hasUser(userMoved) && !carDest.hasUser(userMoved)) {
                            temp_state.getCarI(i).removePassenger(userMoved);
                            temp_state.getCarI(j).addPassenger(userMoved);

                            StringBuffer s = new StringBuffer();
                            s.append("Move from car " + i + " to car " + j + " changing user " + m);
                            setOfSuccessors.add(new Successor(s.toString(), temp_state));

                        }
                    }
                }
            }
        }
    }

    private static void makeDriverToPassanger(final CarSet state, ArrayList<Successor> setOfSuccessors) {
        int nCars = state.getNumberOfCars();
        for (int i = 0; i < nCars; ++i) {

            if (state.getCarI(i).getPassengersSize() == 0) {
                CarSet temp_state = new CarSet(state.getAllCars(), state.getAllUsers());
                boolean alreadyDone = false;
                for (int j = 0; j < nCars && !alreadyDone; j++) {
                    if (i != j && temp_state.makeDriverCarIPassangerCarJ(temp_state.getCarI(i), temp_state.getCarI(j))) {
                        alreadyDone = true;

                        StringBuffer s = new StringBuffer();
                        s.append("Deleting car " + i + " and adding driver to car " + j);
                        setOfSuccessors.add(new Successor(s.toString(), temp_state));
                        --nCars;
                    }
                }
            }
        }
    }
}
