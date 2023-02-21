#ifndef NETWORK_H
#define NETWORK_H

#include "Station.h"
#include "StationLink.h"

#include <string>
#include <vector>

class Network {
public:
	std::string netName;
	std::vector<Station*> netStations;
	std::vector<StationLink*> netDownLine;
	std::vector<StationLink*> netUpLine;

	void getNetworkData();
};

#endif // !NETWORK_H

