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
(1, 1, 2, 3700, 'Down')
(2, 2, 1, 3700, 'Up')
(3, 2, 3, 4930, 'Down')
(4, 3, 2, 4930, 'Up')
(5, 3, 4, 15070, 'Down')            
(6, 4, 3, 15070, 'Up')
(7, 4, 5, 9050, 'Down')
(8, 5, 4, 9050, 'Up')
(9, 5, 6, 16250, 'Bi-Dir')
(10, 6, 7, 7690, 'Down')
(11, 7, 6, 7690, 'Up')
(12, 7, 8, 9760, 'Bi-Dir')