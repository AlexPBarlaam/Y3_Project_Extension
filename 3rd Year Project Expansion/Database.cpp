#include <string>
#include <stdio.h>
#include <SQLAPI.h> //needs installing

using namespace std;

int getDBData(string statement)
{
	SAConnection con;
	try 
	{
		con.connect("", //DB Name
					"", //Username
					"", //Password
					"");
	}
	catch(){}
}