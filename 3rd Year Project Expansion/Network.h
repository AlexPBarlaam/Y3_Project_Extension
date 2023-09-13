#ifndef NETWORK_H
#define NETWORK_H

#include "Station.h"
#include "StationLink.h"

#include <string>
#include <vector>

using namespace std;

class Network 
{
private:
	string name;
	vector<Station*> stations;
	vector<StationLink*> downLine;
	vector<StationLink*> upLine;

public:
	//Constructor
	Network(string n, vector<Station*> s ,vector<StationLink*> dL, vector<StationLink*> uL);
	
	//getters and setters
	void setName(string n) { name = n; }
	void setStations(vector<Station*> s) { stations = s; }
	void setDownLine(vector<StationLink*> dL) { downLine = dL; }
	void setUpLine(vector<StationLink*> uL) { upLine = uL; }
	string getName() { return name; }
	vector<Station*> getStations() { return stations; }
	vector<StationLink*> getDownLine() { return downLine; }
	vector<StationLink*> getUpLine() { return upLine; }

	void getNetworkData();
};

#endif // !NETWORK_H

