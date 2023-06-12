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
        outputFile << endl;
    }

    //Tasques
    for (auto it = tasques.begin(); it != tasques.end(); ++it) {
        outputFile << "        (not (asignada " << *(it) << "))" << endl;
        outputFile << "        (not (revisada " << *(it) << "))" << endl;
        outputFile << "        (= (dificultat " << *(it) << ") " << randInt(1, 3) << ")" << endl;
        outputFile << endl;
    }

    outputFile << endl;

    //GOAL
    outputFile << "    (:goal" << endl;
    outputFile << "          (forall(?t - tasca) (revisada ?t))" << endl;
    outputFile << "    )" << endl << endl;

    cout << "Instancia generada correctament" << endl;
}

int main()
{
    //Genera llavor
    srand((unsigned) time(NULL));

    //Obre arxius de sortida
    ofstream outputFile;

    //Crea sets 3-6
    outputFile.open("Problem3_6_1.pddl");
    genera_sets(3, 6);
    crea_arxiu(outputFile);
    outputFile.close();

    outputFile.open("Problem3_6_2.pddl");
    genera_sets(3, 6);
    crea_arxiu(outputFile);
    outputFile.close();

    outputFile.open("Problem3_6_3.pddl");
    genera_sets(3, 6);
    crea_arxiu(outputFile);
    outputFile.close();

    outputFile.open("Problem3_6_4.pddl");
    genera_sets(3, 6);
    crea_arxiu(outputFile);
    outputFile.close();

    outputFile.open("Problem3_6_5.pddl");
    genera_sets(3, 6);
    crea_arxiu(outputFile);
    outputFile.close();

    outputFile.open("Problem3_6_6.pddl");
    genera_sets(3, 6);
    crea_arxiu(outputFile);
    outputFile.close();

    //Crea sets 6-9
    outputFile.open("Problem6_9_1.pddl");
    genera_sets(6, 9);
    crea_arxiu(outputFile);
    outputFile.close();

    outputFile.open("Problem6_9_2.pddl");
    genera_sets(6, 9);
    crea_arxiu(outputFile);
    outputFile.close();

    outputFile.open("Problem6_9_3.pddl");
    genera_sets(6, 9);
    crea_arxiu(outputFile);
    outputFile.close();

    outputFile.open("Problem6_9_4.pddl");
    genera_sets(6, 9);
    crea_arxiu(outputFile);
    outputFile.close();

    outputFile.open("Problem6_9_5.pddl");
    genera_sets(6, 9);
    crea_arxiu(outputFile);
    outputFile.close();

    outputFile.open("Problem6_9_6.pddl");
    genera_sets(6, 9);
    crea_arxiu(outputFile);
    outputFile.close();

    //Crea sets 9-12
    outputFile.open("Problem9_12_1.pddl");
    genera_sets(9, 12);
    crea_arxiu(outputFile);
    outputFile.close();

    outputFile.open("Problem9_12_2.pddl");
    genera_sets(9, 12);
    crea_arxiu(outputFile);
    outputFile.close();

    outputFile.open("Problem9_12_3.pddl");
    genera_sets(9, 12);
    crea_arxiu(outputFile);
    outputFile.close();

    outputFile.open("Problem9_12_4.pddl");
    genera_sets(9, 12);
    crea_arxiu(outputFile);
    outputFile.close();

    outputFile.open("Problem9_12_5.pddl");
    genera_sets(9, 12);
    crea_arxiu(outputFile);
    outputFile.close();

    outputFile.open("Problem9_12_6.pddl");
    genera_sets(9, 12);
    crea_arxiu(outputFile);
    outputFile.close();

    //Crea sets 12-15
    outputFile.open("Problem12_15_1.pddl");
    genera_sets(12, 15);
    crea_arxiu(outputFile);
    outputFile.close();

    outputFile.open("Problem12_15_2.pddl");
    genera_sets(12, 15);
    crea_arxiu(outputFile);
    outputFile.close();

    outputFile.open("Problem12_15_3.pddl");
    genera_sets(12, 15);
    crea_arxiu(outputFile);
    outputFile.close();

    outputFile.open("Problem12_15_4.pddl");
    genera_sets(12, 15);
    crea_arxiu(outputFile);
    outputFile.close();

    outputFile.open("Problem12_15_5.pddl");
    genera_sets(12, 15);
    crea_arxiu(outputFile);
    outputFile.close();

    outputFile.open("Problem12_15_6.pddl");
    genera_sets(12, 15);
    crea_arxiu(outputFile);
    outputFile.close();

    //Crea sets 15-18
    outputFile.open("Problem15_18_1.pddl");
    genera_sets(15, 18);
    crea_arxiu(outputFile);
    outputFile.close();

    outputFile.open("Problem15_18_2.pddl");
    genera_sets(15, 18);
    crea_arxiu(outputFile);
    outputFile.close();

    outputFile.open("Problem15_18_3.pddl");
    genera_sets(15, 18);
    crea_arxiu(outputFile);
    outputFile.close();

    outputFile.open("Problem15_18_4.pddl");
    genera_sets(15, 18);
    crea_arxiu(outputFile);
    outputFile.close();

    outputFile.open("Problem15_18_5.pddl");
    genera_sets(15, 18);
    crea_arxiu(outputFile);
    outputFile.close();

    outputFile.open("Problem15_18_6.pddl");
    genera_sets(15, 18);
    crea_arxiu(outputFile);
    outputFile.close();
}