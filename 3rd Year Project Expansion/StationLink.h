#ifndef STATIONLINK_H
#define STATIONLINK_H

#include "Station.h"

#include <string>

class StationLink
{
public:
	Station originStation;
	Station destStation;
	int linkDistanceMeters;

	void getStationLinkData();
};

#endif// !STATIONLINK_H
