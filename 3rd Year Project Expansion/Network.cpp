#include "Network.h"

using namespace std;

Network::Network(string n, vector<Station*> s, vector<StationLink*> dL, vector<StationLink*> uL) 
{
	name = n;
	stations = s;
	downLine = dL;
	upLine = uL;
}

void Network::getNetworkData() 
{

}