#include <iostream>
#include <fstream>
#include <random>
#include <set>
#include <string>
using namespace std;

set<string> programadors;
set<string> tasques;

int randInt(int min, int max) {
    return min + (rand() % max);
}

void genera_sets(int min, int max) {

    //Genera programadors
    int maxP = randInt(min, max);
    string nomP;
    for (int i = 1; i <= maxP; ++i) {
        nomP = "p" + to_string(i);
        programadors.insert(nomP);
    }

    //Com a molt, el doble de tasques que de programadors
    int maxT = randInt(min + maxP/3, maxP * 2);
    string nomT;
    for (int i = 1; i <= maxT; ++i) {
        nomT = "t" + to_string(i);
        tasques.insert(nomT);
    }

}

void crea_arxiu(ofstream& outputFile) {
    //Capçalera
    outputFile << "(define (problem planificator)" << endl;
    outputFile << "    (:domain planificator3000)" << endl << endl;

    //OBJECTES
    outputFile << "    (:objects" << endl;

    //Programadors
    outputFile << "        ";
    for (auto it = programadors.begin(); it != programadors.end(); ++it) {
        outputFile << *(it) << " ";
    }
    outputFile << "- programador" << endl;

    //Tasques
    outputFile << "        ";
    for (auto it = tasques.begin(); it != tasques.end(); ++it) {
        outputFile << *(it) << " ";
    }
    outputFile << "- tasca" << endl;


    outputFile << "    )" << endl << endl;

    //INIT
    outputFile << "    (:init" << endl << endl;

    //Treballadors
    for (auto it = programadors.begin(); it != programadors.end(); ++it) {
        outputFile << "        (disponible " << *(it) << ")" << endl;
        outputFile << "        (= (habilitat " << *(it) << ") " << randInt(1, 3) << ")" << endl;
        outputFile << "        (= (calitat " << *(it) << ") " << randInt(1, 2) << ")" << endl;
        outputFile << endl;
    }

    //Tasques
    for (auto it = tasques.begin(); it != tasques.end(); ++it) {
        outputFile << "        (not (asignada " << *(it) << "))" << endl;
        outputFile << "        (not (revisada " << *(it) << "))" << endl;
        outputFile << "        (= (dificultat " << *(it) << ") " << randInt(1, 3) << ")" << endl;
        outputFile << "        (= (temps " << *(it) << ") " << randInt(1, 5) << ")" << endl;
        outputFile << endl;
    }

    outputFile << endl;
    //Dificultat entre 1-3

    outputFile << "        (= (tempsTotal) 0)" << endl << endl;

    outputFile << "    )" << endl << endl;

    //GOAL
    outputFile << "    (:goal" << endl;
    outputFile << "          (forall(?t - tasca) (revisada ?t))" << endl;
    outputFile << "    )" << endl << endl;

    //METRIC
    outputFile << "    (:metric minimize(+(*0.1 (tempsTotal)) (*0.9 (progEnUs))))" << endl << endl;

    outputFile << ")" << endl;


    cout << "Instancia generada correctament" << endl;
}

int main()
{
    //Genera llavor
    srand((unsigned) time(NULL));

    //Obre arxius de sortida
    ofstream outputFile;

    //Crea sets 5-10
    outputFile.open("Problem1.pddl");
    genera_sets(5, 10);
    crea_arxiu(outputFile);
    outputFile.close();

    //Crea sets 10-15
    outputFile.open("Problem2.pddl");
    genera_sets(10, 15);
    crea_arxiu(outputFile);
    outputFile.close();

    //Crea sets 15-20
    outputFile.open("Problem3.pddl");
    genera_sets(15, 20);
    crea_arxiu(outputFile);
    outputFile.close();

    //Crea sets 20-25
    outputFile.open("Problem4.pddl");
    genera_sets(20, 25);
    crea_arxiu(outputFile);
    outputFile.close();

    //Crea sets 25-30
    outputFile.open("Problem5.pddl");
    genera_sets(25, 20);
    crea_arxiu(outputFile);
    outputFile.close();
}