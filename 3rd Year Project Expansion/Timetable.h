#ifndef TIMETABLE_H
#define TIMETABLE_H

#include <vector>

using namespace std;

class Timetable 
{
private:
	vector<vector<int>> departures;
	vector<vector<int>> arrivals;

public:
	//constructor
	Timetable(vector<vector<int>> d, vector<vector<int>> a);

	//getters and setters
	void setDeparture(vector<vector<int>> d) { departures = d; }
	void setArrivals(vector<vector<int>> a) { arrivals = a; }
	vector<vector<int>> getDepartures() { return departures; }
	vector<vector<int>> getArrivals() { return arrivals; }

	void getTimetableData();
};


#endif // !TIMETABLE_H

