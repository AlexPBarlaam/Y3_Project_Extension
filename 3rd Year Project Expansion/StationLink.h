#ifndef STATIONLINK_H
#define STATIONLINK_H

#include "Station.h"

#include <string>

using namespace std;

class StationLink
{
private:
	Station* originStation;
	Station* destStation;
	int linkDistanceMeters;

public:
	//Constructor
	StationLink(Station* oS, Station* dS, int lDM);
	
	//Setters and Getters
	void setOriginStation(Station* oS) { originStation = oS; }
	void setDestStation(Station* dS) { destStation = dS; }
	void setLinkDistance(int lDM) { linkDistanceMeters = lDM; }
	Station* getOriginStation() { return originStation; }
	Station* getDestStation() { return destStation; }
	int getLinkDistance() { return linkDistanceMeters; }
	
	void getStationLinkData();
};

#endif// !STATIONLINK_H
