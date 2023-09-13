#ifndef STATION_H
#define STATION_H

#include "Network.h"

#include <string>
#include <vector>

using namespace std;

class Station
{
private:
	string name;
	Network* network ;

public:
	//Constructor
	Station(string n, Network* ne);
	
	//getters and setters
	void setName(string n) { name = n; }
	void setNetwork(Network* n) { network = n; }
	string getName() { return name; }
	Network* getNetwork() { return network; }

	void getStationData(); 

};
#endif// !STATION_H
