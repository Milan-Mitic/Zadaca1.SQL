create database TrainStationDB;
use TrainStationDB;

create table Stations(
StationID int,
StationName nvarchar(50),
City nvarchar(50)
);

create table Trains(
TrainID int,
TrainName nvarchar(50),
TrainType nvarchar(50),
DepartureTime time,
ArrivalTime time,
StationID int
);

insert into Stations(StationID, StationName, City)
values 
     (1, 'StationName1', 'City1'),
	 (2, 'StationName2', 'City2'),
	 (3, 'StationName3', 'City3');

insert into Trains(TrainID, TrainName, TrainType, DepartureTime, ArrivalTime, StationID)
values 
     (10, 'TrainName1', 'TrainType1', '08:00:00', '11:00:00', 1),
	 (11, 'TrainName2', 'TrainType2', '09:00:00', '12:00:00', 2),
	 (12, 'TrainName3', 'TrainType3', '10:00:00', '13:00:00', 3),
	 (13, 'TrainName4', 'TrainType4', '11:00:00', '14:00:00', 2),
	 (14, 'TrainName5', 'TrainType5', '12:00:00', '15:00:00', 3);

delete from Trains where TrainID = 10;
delete from Stations where StationID = 1;

drop table Trains;