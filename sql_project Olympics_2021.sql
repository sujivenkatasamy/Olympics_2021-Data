
create database olympics_2021;
use  olympics_2021;

create table games (game_id int  primary key , game_name varchar(30));
create table athletes (ath_id int primary key ,ath_name varchar(30),gender varchar(30),DOB date, age int , height varchar(20),country varchar(20),game_id int ,remarks text ,constraint ch check (age >13), constraint un unique (ath_name ,country),constraint fk foreign key (game_id) references games(game_id));
create table medals (medal_id int primary key ,Awards varchar(20));
create table events_2021 (event_id varchar(15), Period date, venue text,category text,ath_id int,medal_id int ,constraint xy foreign key (medal_id)references medals(medal_id), constraint yz foreign key (ath_id) references athletes(ath_id));

#games
insert into games values ( 101 ,'Archery'),(102,'Gymnastics'),(103,'Boxing'),(104,'Cycling'),(105,'Shooting'),(106,'Wrestling'),(107,'Karate'),(108,'Rowing'),(109,'Diving'),(110,'Equestrian');
#medals
insert into medals values (10,'GOLD'),(20,'SILVER'),(30,'BRONZE');
# athletes 
insert into athletes values (1,'Mete Gazoz','Male','1999-06-08',24,'180cm','Turkey',101,'Representing turkey at 2016 summer olympics held in rio de janeiro');
insert into athletes values (2,'Marro Nespoli','Male','1987-11-22',35,'181cm','Italy',101,'2017 Mexico city world champion');
insert into athletes values (3,'Takaharu Furukawa','Male','1984-08-09',39,'175cm','Japan',101,'2015 copenhagen world champion');
insert into athletes values (4,'Daiki Hashimoto','Male','2001-08-07',22,'166cm','Japan',102,'2022- Liverpool All-around champion');
insert into athletes values (5,'Xiao Ruoteng ','Male','1996-01-30',27,'172cm','China',102,'wins lot of championships');
insert into athletes values (6,'Niki Nagornyy','Male','1997-02-12',26,'168cm','Russia',102,'wins lot of championships');
insert into athletes values (7,'Galaa yalai','Male','1992-12-01',30,'164cm','England',103,'European Championships 2017 light fly weight');
insert into athletes values (8,'Carlo Poalam','Male','1998-07-16',25,'163cm','Phillippines',103,'Southeast Asian games 2019 champion');
insert into athletes values (9,'Ryomei Tanaka','Male','1993-10-13',29,'167cm','Japan',103,'Tokyo olympics games 2020 champion');
insert into athletes values (10,'Richard Carapaz ','Male','1993-05-29',30,'170cm','Ecuador',104,'Ground tours 3 individual stays (2018,2019');
insert into athletes values (11,'Wout Van Aert ','Male','1994-09-15',28,'190cm','Belgium',104,'National Time trial Championships (2019,2020,2023');
insert into athletes values (12,'Tadej Pogacar','Male','1998-09-21',24,'176cm','Slovenia',104,'National road race championship 2023');
insert into athletes values (13,'Javad Foroughi ','Male','1979-09-11',43,'176cm','Iran',105,'ISSF world cup champion 2021 new delhi');
insert into athletes values (14,'Damir Mikec ','Male','1984-03-31',39,'179cm','Serbia',105,'Represending serbia');
insert into athletes values (15,'Pang Wei','Male','1986-07-19',37,'178cm','China',105,'2006 world champion');
insert into athletes values(16,'An san','female','2001-02-27',22,'172cm','South Korea',101,'2017 world archery youth compionships-winner'),(17,'Elena Osiova','female','1993-05-23',30,'173cm','Russia',101,'Representing Russian Archery Federation'),(18,'Lucilla Boari','female','1997-03-24',26,'172cm','Italy',101,'Won medaels in Mediterranean Games');
insert into athletes values(19,'Sunisa Lee','female','2003-03-09',20,'152cm','United States',102,'Represending Anburn Tighers'),(20,'Rebeca Andrade','female','1999-05-08',24,'160cm','Brazil',102,'Represending Brazil'),(21,'Angelina Melnikova ','female','2000-07-18',23,'154cm','Russia',102,'Longiness Prize for Elegance');
insert into athletes values (22,'Zaru Uguev','male','1995-03-27',28,'157cm','Russia',106,'Grand Master of Sports in Freestyle Wrestling'),(23,'Ravi Kumar Dahiya','male','1997-12-12',25,'170cm','India',106,'2021- Major dhyan chand khel ratna Award,Highest sporting honoure of india'),(24,'Nurislam Sanayev','male','1991-02-09',32,'168cm','Kazakhstan',106,'Got gold in Matteo Pellicone Ranking series 2021'),(25,'Takuto Otoguro','male','1998-12-13',24,'173cm','Japan',106,'Claiming the World championship and National championship at age 19'),(26,'Yui Susaki','female','1999-06-13',24,'153cm','Japan',106,'Wrestling Special Award 2017'),(27,'Sun Yanam','female','1992-09-15',30,'155cm','China',106,'2016 Asian Wrestling Championship in Bankok - winner'),(28,'Mariya Stadnik','female','1998-06-03',35,'157cm','Azerbaijan',106,'won four olympic medals');
insert into athletes values (29,'Ryo Kiyuna','male','1990-06-12',33,'168cm','Japan',107,'2022- Asian Championships Tashkent,Uzbekistan(Team Kata) - Winner'),(30,'Damian Quintero','male','1984-06-12',39,'172cm','Spain',107,'2019 - Mens Individual kata event at the european games in minst- Winner'),(31,'Ariel Torres','male','1997-11-06',25,'175cm','usa',107,'National finds 3X Sr.National Champion'),(32,'Ivet Goranova','female','2000-03-06',23,'156cm','Bulgaria',107,'Bulgarian Sports person of the year (2021)'),(33,'Anzhelika Terliuga','female','1992-03-27',31,'153cm','ukraine',107,'won gold in womens 55kg event at 2023 european games held in poland'),(34,'Bettina Plank','female','1992-02-24',31,'156cm','Austria',107,'won gold in 2023 krakow-Malopolsta under 50kg');
insert into athletes values (35,'Stefanos Ntouskos','male','1997-02-28',26,'186cm','Greece',108," Winner of Mediterranean games - 2018 Tariagona (Double sculls"),(36,'Kjetil Borch','male','1990-02-14',33,'193cm','Norway',108,'2018 Plovdiv World championships Winner'),(37,'Damir Martin','male','1988-07-14',35,'185cm','Croatita',108,'Won 5 golds in world rowing cup'),(38,'Emma Twigg','female','1987-03-01',36,'181cm','New Zealand',108,'Appointed a member of the New zealand order of merit for services to rowing'),(39,'Hanna Prakatsen','female','1992-07-06',31,'180cm','Russia',108,'Gold in European championships(2021 varese)'),(40,'Magdalena Lobnig','female','1990-07-19',33,'180cm','Austria',108,'Gold in World championship 2012 Trakai');
insert into athletes values (41,'Xie Siyi','male','1996-03-28',27,'170cm','China',109,'Winner - 2018 Wuhan FINA Diving World Cup'),(42,'Wang Zongyuan','male','2001-10-24',21,'180cm','China',109,'World Champion - 2023 Fukuoka'),(43,'Jack Laugher','male','1995-01-20',28,'166cm','Great Britain',109,'Won Diver of the year at the British Swimming Awards'),(44,'Shi Tingmao','female','1991-08-31',32,'160cm','China',109,'Best Female Diver of the year by FINA (2015-2021)'),(45,'Wang Han','female','1991-01-21',32,'163cm','China',109,'On 11 Aug 2021,The All-China Womens Fedaration awareded  The honour of National March 8 Red Banner Beares');
insert into athletes values (46,'Jessica Von Bredow Wernd','female','1986-02-16',37,'170cm','Germany',110,' winner European Championships - 2019 Rotterdam (Team -dressage)'),(47,'Isabell Werth','female','1969-07-21',54,'172cm','Germany',110,'Hold 7 gold in Olympics games'),(48,'Charlotte Dujardin','female','1985-07-13',38,'170cm','Great Britan',110,'Dujardin has a modern strip of public housing named after her in Enfield'),(49,'Ben Maher','male','1983-01-30',40,'183cm','Great Britan',110,'Gold in 2012 London olympics'),(50,'Peter Fredricson','male','1972-01-30',51,'182cm','Sweden',110,'Silver in 2004 Athens Olympics'),(51,'Maikel van der vleuten','male','1988-02-10',35,'179cm','Netherlands',110,'European Championships 2015 Aachen Winner');
#events_2021:
insert into events_2021 values ('E1','2021-07-31','Yumenoshima Park Archery Field',"Men's Individual",1,10);
insert into events_2021 values ('E1','2021-07-31','Yumenoshima Park Archery Field',"Men's Individual",2,20);
insert into events_2021 values ('E1','2021-07-31','Yumenoshima Park Archery Field',"Men's Individual",3,30);
insert into events_2021 values ('E2','2021-07-24','Arlake Gymnastics Centre ',"Individual All-around",4,10);
insert into events_2021 values ('E2','2021-07-24','Arlake Gymnastics Centre ',"Individual All-around",5,20);
insert into events_2021 values ('E2','2021-07-24','Arlake Gymnastics Centre ',"Individual All-around",6,30);
insert into events_2021 values ('E3','2021-07-25','Ryogoku Kokugikan',"Fly Weight",7,10);
insert into events_2021 values ('E3','2021-07-25','Ryogoku Kokugikan',"Fly Weight",8,20);
insert into events_2021 values ('E3','2021-07-25','Ryogoku Kokugikan',"Fly Weight",9,30);
insert into events_2021 values ('E4','2021-07-28','Fuji International Speedway',"Men's Road Race",10,10);
insert into events_2021 values ('E4','2021-07-28','Fuji International Speedway',"Men's Road Race",11,20);
insert into events_2021 values ('E4','2021-07-28','Fuji International Speedway',"Men's Road Race",12,30);
insert into events_2021 values ('E5','2021-07-24','Asaka Shootind Range',"10 meter air pistol",13,10);
insert into events_2021 values ('E5','2021-07-24','Asaka Shootind Range',"10 meter air pistol",14,20);
insert into events_2021 values ('E5','2021-07-24','Asaka Shootind Range',"10 meter air pistol",15,30);
insert into events_2021 values ('E6','2021-08-01','Makuhari Messe Hall',"Womens's free style - Under 50kg",26,10), ('E6','2021-08-01','Makuhari Messe Hall',"Womens's free style - Under 50kg",27,20), ('E6','2021-08-01','Makuhari Messe Hall',"Womens's free style - Under 50kg",28,30);
insert into events_2021 values ('E7','2021-08-05','Nippon Budokan',"Men's Individual kata",29,10), ('E7','2021-08-05','Nippon Budokan',"Men's Individual kata",30,20), ('E7','2021-08-05','Nippon Budokan',"Men's Individual kata",31,30);
insert into events_2021 values ('E8','2021-07-23','Sea Forest Waterway',"women's Single Sculls",38,10), ('E8','2021-07-23','Sea Forest Waterway',"women's Single Sculls",39,20), ('E8','2021-07-23','Sea Forest Waterway',"women's Single Sculls",40,30);
insert into events_2021 values ('E9','2021-07-25','Tokyo Aquatics Centre',"Men's 3m Spring Board",41,10),('E9','2021-07-25','Tokyo Aquatics Centre',"Men's 3m Spring Board",42,20),('E9','2021-07-25','Tokyo Aquatics Centre',"Men's 3m Spring Board",43,30);
insert into events_2021 values ('E10','2021-08-03','Baji Koen',"Individual- Dressage",46,10),('E10','2021-08-03','Baji Koen',"Individual- Dressage",47,20),('E10','2021-08-03','Baji Koen',"Individual- Dressage",48,30);
#  data retriving - Examples

#1.display athlets who get gold,silver, bronze
select a.ath_name ,c.awards from athletes a inner join events_2021 b using (ath_id) inner join medals c using (medal_id);
#2. populating the number of athlets in each country
select  country  , count(ath_id )from athletes group by (country);
#3.Name the events which happened during first week of olympics
select a.game_name , c.category from games a inner join athletes b using (game_id) inner join events_2021 c using (ath_id) where c.period between ('2021-07-20') and ('2021-07-27');
#4.Name the events which happened during last week of olympics
select a.game_name,c.category from games a inner join athletes b using (game_id) inner join events_2021 c using (ath_id ) where c.period between ('2021-08-01') and ('2021-08-07');
#5.give the name of the games for which athletes associated with
select  b.ath_name, a.game_name from games a inner join athletes b using (game_id);
#6.count of athletes in each game
select a.game_name ,count(b.ath_name) from games a inner join athletes b using (game_id) group by (a.game_name);







