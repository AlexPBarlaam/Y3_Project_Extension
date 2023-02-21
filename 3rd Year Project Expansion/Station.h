#ifndef STATION_H
#define STATION_H

#include "Network.h"

#include <string>
#include <vector>

class Station
{
public:
	std::string name;
	Network network ;

	void getStationData(); 

};
#endif// !STATION_H
