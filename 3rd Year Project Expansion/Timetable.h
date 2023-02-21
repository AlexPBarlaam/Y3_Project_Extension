#ifndef TIMETABLE_H
#define TIMETABLE_H

#include <vector>

class Timetable {
public:
	std::vector<std::vector<int>> departures;
	std::vector<std::vector<int>> arrivals;

	void getTimetableData();
};


#endif // !TIMETABLE_H

