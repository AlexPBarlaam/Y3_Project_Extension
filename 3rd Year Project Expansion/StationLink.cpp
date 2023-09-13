#include "StationLink.h"

using namespace std;

StationLink::StationLink(Station* oS, Station* dS, int lDM) 
{
	originStation = oS;
	destStation = dS;
	linkDistanceMeters = lDM;
}
void StationLink::getStationLinkData() 
{

}