package SmartCity;
import aima.search.framework.GoalTest;

public class SmartCityGoalTest implements GoalTest {

    public boolean isGoalState(Object n) {
        boolean valid = true;
        CarSet state = (CarSet) n;

        for (int i = 0; i < state.getNumberOfCars(); ++i) {
            int dist = state.getCarI(i).getDistance();
            if (dist > 300) {
                valid = false;
            }
            else if (state.getCarI(i).getPassengersSize() > 3) {
                valid = false;
            }
            else if ((float)state.getUsersSize() / 3.f > state.getNumberOfCars()) {
                valid = false;
            }
            else if (state.noUsersRepetition())
                valid = false;
        }

        return valid;
    }

}