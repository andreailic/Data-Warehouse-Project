
if object_id('match','U') is not null
drop table match
if object_id('player','U') is not null
drop table player
if object_id('birthPlace','U') is not null
drop table birthPlace
if object_id('time','U') is not null
drop table time
if object_id('tournament','U') is not null
drop table tournament
if object_id('round','U') is not null
drop table round
if object_id('ranking','U') is not null
drop table ranking


create table round(
	round_id int not null primary key identity,
	roundName varchar(100) not null,
	round int not null
    )
	

create table tournament(
	id int not null primary key identity,
	tourney_id nvarchar(20),
	tourneyName varchar(100) not null,
	tourneyLocation varchar(100) not null,
	tourneyOrder numeric(3) not null,
	tourneyDates varchar(100) not null,
	tourneyConditions varchar(50) not null
	)
	

create table birthPlace (
 birth_country_id int not null primary key identity,
 location nvarchar(100) not null
    )
	

create table player (
id int not null primary key identity,
player_id nvarchar(20),
birth_country_id int not null  foreign key (birth_country_id) references birthPlace(birth_country_id),
id_rank int,
firstName varchar(30),
lastName varchar(30) ,
flagCode varchar(10) ,
birthDate varchar(20),
birthYear varchar(20) ,
turnedPro varchar(10),
weightKg numeric(5) ,
heightCm numeric(5),
backhand varchar(30),
handedness varchar(30)
  )
  
  create table ranking (
  id_rank int not null primary key identity,
  player_id nvarchar(20),
  ranking_points int,
  move_direction varchar(20)
  )
  

create table time (
time_id int not null primary key identity,
hours varchar(5) not null,
minutes varchar(5) not null,
seconds varchar(10) not null,
duration int not null,
full_time varchar(100)
)



create table match (
match_id nvarchar(100),
date_id nvarchar(30),
tourney_id nvarchar(20),
round_id nvarchar(50),
time_id varchar(20),
winner_id nvarchar(30),
loser_id nvarchar(30),
match_score_tiebreaks nvarchar(50),
winner_name varchar(50),
loser_name varchar(50),
winner_aces int,
winner_double_faults int,
winner_first_serves_in int,
winner_break_points_saved int,
winner_service_points_total int,
winner_break_points_return_total int,
winner_return_points_won int,
winner_total_points_won int,
loser_aces int,
loser_double_faults int,
loser_first_serves_in int,
loser_break_points_saved int,
loser_service_points_total int,
loser_break_points_return_total int,
loser_return_points_won int,
loser_total_points_won int,

)
