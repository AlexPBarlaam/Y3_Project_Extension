create TABLE StationLinks (
	StationLinkID int NOT NULL,
	OriginStationID int NOT NULL,
	DestStationID int NOT NULL,
	Lenght int NOT NULL,
	Direction varchar(255),
	PRIMARY KEY(StationLinkID),
	FOREIGN KEY(OriginStationID) REFERENCES Stations(StationID),
	FOREIGN KEY(DestStationID) REFERENCES Stations(StationID)
)

INSERT INTO Stations(StationID, StationName, StationNetwork)
values
(1, 'Cambridge', 'Fen Line'),
(2, 'Cambridge North', 'Fen Line'),
(3, 'Waterbeach', 'Fen Line'),
(4, 'Ely', 'Fen Line'),
(5, 'Littleport', 'Fen Line'),
(6, 'Downham Market', 'Fen Line'),
(7, 'Watlington', 'Fen Line'),
(8, 'Kings Lynn', 'Fen Line')

INSERT INTO StationLinks(StationLinkID, OriginStationID, DestStationID, Lenght, Direction)
values
(1, 1, 2, 3700, 'Down'),
(2, 2, 1, 3700, 'Up'),
(3, 2, 3, 4930, 'Down'),
(4, 3, 2, 4930, 'Up'),
(5, 3, 4, 15070, 'Down'),            
(6, 4, 3, 15070, 'Up'),
(7, 4, 5, 9050, 'Down'),
(8, 5, 4, 9050, 'Up'),
(9, 5, 6, 16250, 'Bi-Dir'),
(10, 6, 7, 7690, 'Down'),
(11, 7, 6, 7690, 'Up'),
(12, 7, 8, 9760, 'Bi-Dir')

create TABLE TimetableDep (
	TimetableDepID int NOT NULL, 
	TimetableNum int NOT NULL,
	StationID int NOT NULL,
	StationName varchar(255),
	TimeTick int NOT NULL,
	PRIMARY KEY (TimetableDepID),
	FOREIGN KEY (StationID) REFERENCES Stations(StationID)
)

INSERT INTO TimetableDep(TimetableDepID, TimetableNum ,StationID, StationName, TimeTick)
values
(1,1, 1, 'Cambridge', 1),
(2,1, 2,'Cambridge North',154),
(3,1, 3,'Waterbeach',338),
(4,1, 4,'Ely',775),
(5,1, 5,'Littleport',1062),
(6,1, 6,'Downham Market',1529),
(7,1, 7,'Watlington',1782),
(8,2, 8,'King''s Lynn', 1),
(9,2, 7,'Watlington', 305),
(10,2, 6,'Downham Market', 558),
(11,2, 5,'Littleport', 1025),
(12,2, 4,'Ely', 1312),
(13,2, 3,'Waterbeach', 1749),
(14,2, 2,'Cambridge North', 1933),
(15,3, 1,'Cambridge', 2028),
(16,3, 2,'Cambridge North', 2122),
(17,3, 3,'Waterbeach', 2247),
(18,3, 4,'Ely', 2625),
(19,3, 5,'Littleport', 2853),
(20,3, 6,'Downham Market', 3261),
(21,3, 7,'Watlington', 3455),
(22,4, 8,'King''s Lynn', 2028),
(23,4, 7,'Watlington', 2273),
(24,4, 6,'Downham Market', 2467),
(25,4, 5,'Littleport', 2875),
(26,4, 4,'Ely', 3103),
(27,4, 3,'Waterbeach', 3481),
(28,4, 2,'Cambridge North', 3606)

create TABLE TimetableArr (
	TimetableArrID int NOT NULL,
	TimeTableNum int NOT NULL,
	StationID int NOT NULL,
	StationName varchar(255),
	TimeTick int NOT NULL
	PRIMARY KEY (TimetableArrID)
	FOREIGN KEY (StationID) REFERENCES Stations(StationID)
)

INSERT INTO	TimetableArr(TimetableArrID, TimeTableNum ,StationID ,StationName, TimeTick)
values
(1 ,1, 2,'Cambridge North', 94),
(2 ,1, 3,'Waterbeach', 278),
(3,1, 4,'Ely', 715),
(4,1, 5,'Littleport', 1002),
(5,1, 6,'Downham Market', 1469),
(6,1, 7,'Watlington', 1722),
(7,1, 8,'King''s Lynn', 2026),
(8,2, 7,'Watlington', 245),
(9,2, 6,'Downham Market', 498),
(10,2, 5,'Littleport', 1002),
(11,2, 4,'Ely', 1252),
(12,2, 3,'Waterbeach', 1689),
(13,2, 2,'Cambridge North', 1873),
(14,2, 1,'Cambridge', 2026),
(15,3, 2,'Cambridge North', 2121),
(16,3, 3,'Waterbeach', 2246),
(17,3, 4,'Ely', 2624),
(18,3, 5,'Littleport', 2852),
(19,3, 6,'Downham Market', 3260),
(20,3, 7,'Watlington', 3454),
(21,3, 8,'King''s Lynn', 3699),
(22,4, 7,'Watlington', 2272),
(23,4, 6,'Downham Market', 2466),
(24,4, 5,'Littleport', 2874),
(25,4, 4,'Ely', 3102),
(26,4, 3,'Waterbeach', 3480),
(27,4, 2,'Cambridge North', 3605),
(28,4, 1,'Cambridge', 3699)
