package SmartCity;

import aima.search.framework.HeuristicFunction;

public class SmartCityHeuristicFunction implements HeuristicFunction {

    public double getHeuristicValue(Object n){
        CarSet state = (CarSet) n;
        //System.out.println("The heuristic value is: " + (double)state.getTotalDistance());
        return (double)state.getTotalDistance();
    }

}