create database TaskManagement
use TaskManagement
drop database TaskManagement

create table users(user_id int primary key,emp_id int,ename varchar(50),email varchar(90),epassword int,phone_no varchar(15),estatus varchar(25))
create table project(pro_id char(20) primary key,emp_id int,pro_name varchar(25),pro_cost decimal(10,2),start_date date,end_date date,pro_status varchar(25),user_id int,foreign key(user_id) references users(user_id))
create table task(task_id char(20) primary key,emp_id int,task_name varchar(50),pro_id char(20),assigned_to varchar(25),due_date date,foreign key(pro_id) references project(pro_id))
create table taskcomment(comment_id int primary key,task_id char(20),emp_id int,com_text varchar(225),work_status varchar(30),foreign key(task_id) references task(task_id))
create table taskattachment(attachment_id char(20) primary key,task_id char(20),emp_id int,pro_name varchar(25),uploaded_by date,attachment_status varchar(25),foreign key(task_id) references taskcomment(task_id))
create table projectmembers(pro_mem_id char(20) primary key,pro_id char(20),emp_id int,emp_role varchar(30),year_of_working int,foreign key(pro_id) references task(pro_id))
create table activitylog(log_id char(20) primary key,pro_id char(20),emp_id int,work_type varchar(40),activity_status varchar(35),foreign key(pro_id) references project(pro_id))

select * from users
select * from project
select * from task
select * from taskcomment
select * from taskattachment
select * from projectmembers
select * from activitylog

insert into users values(11101,101,"nisha","mail2nisha201@gmail.com",12345,"9039684950","Active"),(11102,102,"lisa","mail2lisa202@gmail.com",12341,"9339304950","Active"),(11103,103,"tina","mail2tina203@gmail.com",12145,"9909304950","Active"),
						(11104,104,"riya","mail2riya204@gmail.com",22345,"9039300050","Active"),(11105,105,"alex","mail2alex205@gmail.com",12342,"9044304950","Active"),(11106,106,"rose","mail2rose206@gmail.com",12245,"9064304950","Active"),
                        (11107,107,"anu","mail2anu207@gmail.com",32345,"9039304450","Active"),(11108,108,"kate","mail2kate208@gmail.com",12343,"9559304950","Active"),(11109,109,"leo","mail2leo209@gmail.com",12445,"9039364950",null),
                        (11110,110,"meera","mail2meera210@gmail.com",42345,"9039884950",null),(11111,111,"mark","mail2mark211@gmail.com",12344,"9039366950","Active"),(11112,112,"mia","mail2mia212@gmail.com",12545,"9032304950","Active"),
                        (11113,113,"jon","mail2jon213@gmail.com",52345,"9039306650","Active"),(11114,114,"lucy","mail2lucy214@gmail.com",12346,"9037704950",null),(11115,115,"noah","mail2noah215@gmail.com",12645,"9009304950","Active"),
                        (11116,116,"krish","mail2krish216@gmail.com",62345,"9039332950","Active"),(11117,117,"sam","mail2sam217@gmail.com",12347,"9039884950","Active"),(11118,118,"ella","mail2ella218@gmail.com",12745,"9031504950","Active"),
						(11119,119,"john","mail2john219@gmail.com",72345,"9039311950","Active"),(11120,120,"nisha","mail2nisha220@gmail.com",12348,"9039994950",null),(11121,121,"luke","mail2luke221@gmail.com",12845,"9039306350","Active"),
                        (11122,122,"mary","mail2mary222@gmail.com",82345,"9037704950","Active"),(11123,123,"adam","mail2adam223@gmail.com",12349,"9039004950","Active"),(11124,124,"rob","mail2rob224@gmail.com",12945,"9039984950","Inactive"),
                        (11125,125,"paul","mail2paul225@gmail.com",92345,"9039300950",null),(11126,126,"eva","mail2eva226@gmail.com",12340,"9039323950","Active"),(11127,127,"sue","mail2sue227@gmail.com",12045,"8039304950","Active"),
                        (11128,128,"anna","mail2anna225@gmail.com",23450,"9032304950","Active"),(11129,129,"steve","mail2steve229@gmail.com",12311,"9067304950",null),(11130,130,"max","mail2max230@gmail.com",11245,"8939304950",null),
                        (11131,131,"mike","mail2mike231@gmail.com",70345,"9023404950","Active"),(11132,132,"amy","mail2amy232@gmail.com",12312,"9039304890","Active"),(11133,133,"iris","mail2iris233@gmail.com",13345,"8839304950","Active"),
                        (11134,134,"sara","mail2sara234@gmail.com",83345,"9039307950","Active"),(11135,135,"ryan","mail2ryan235@gmail.com",12313,"9039300050","InActive"),(11136,136,"anu","mailanu236@gmail.com",15545,"9017304950","Active"),
                        (11137,137,"tom","mail2tom237@gmail.com",94345,"9081304950","Active"),(11138,138,"jack","mail2jack238@gmail.com",12314,"9035604950","Active"),(11139,139,"zoe","mail2zoe239@gmail.com",11745,"9039644950","InActive"),
                        (11140,140,"emma","mail2emma240@gmail.com",53450,"9010304950",null)
insert into project values("P001",101,"Project A",60000.00,"2024-01-01","2024-06-01","Completed",11101),("P002",102,"Project B",66000.00,"2024-02-01","2024-07-01","Completed",11102),("P003",103,"Project C",50000.00,"2024-03-01","2024-08-01","Active",11103),
						  ("P004",104,"Project A",60000.00,"2024-01-15","2024-06-15","Completed",11104),("P005",105,"Project C",50000.00,"2024-04-01","2024-09-01","Active",11105),("P006",106,"Project G",35000.00,"2024-05-01","2024-10-01","Completed",11106),
						  ("P007",107,"Project A",60000.00,"2024-01-10","2024-05-10","Completed",11107),("P008",108,"Project C",50000.00,"2024-02-15","2024-07-15","Active",11108),("P009",109,"Project G",35000.00,"2024-03-10","2024-08-10","Active",11109),
						  ("P010",110,"Project A",60000.00,"2024-04-15","2024-09-15","Completed",11110),("P011",111,"Project C",50000.00,"2024-01-20","2024-06-20","Active",11111),("P012",112,"Project A",60000.00,"2024-02-20","2024-07-20","OnHold",11112),
						  ("P013",113,"Project B",66000.00,"2024-03-20","2024-08-20","Completed",11113),("P014",114,"Project F",100000.00,"2024-04-20","2024-09-20","Active",11114),("P015",115,"Project B",66000.00,"2024-01-25","2024-06-25","OnHold",11115),
						  ("P016",116,"Project B",66000.00,"2024-02-25","2024-07-25","Active",11116),("P017",117,"Project E",70000.00,"2024-03-25","2024-08-25","Completed",11117),("P018",118,"Project C",50000.00,"2024-04-25","2024-09-25","OnHold",11118),
						  ("P019",119,"Project B",66000.00,"2024-01-30","2024-06-30","OnHold",11119),("P020",120,"Project E",70000.00,"2024-02-28","2024-07-29","Completed",11120),("P021",121,"Project H",25000.00,"2024-03-30","2024-08-30","Completed",11121),
						  ("P022",122,"Project D",50000.00,"2024-04-30","2024-09-30","Completed",11122),("P023",123,"Project E",70000.00,"2024-01-05","2024-06-05","Active",11123),("P024",124,"Project H",25000.00,"2024-02-05","2024-07-05","OnHold",11124),
						  ("P025",125,"Project D",50000.00,"2024-03-05","2024-08-05","Completed",11125),("P026",126,"Project E",70000.00,"2024-04-05","2024-09-05","Active",11126),("P027",127,"Project H",25000.00,"2024-01-07","2024-06-07","OnHold",11127),
						  ("P028",128,"Project D",50000.00,"2024-02-07","2024-07-07","Completed",11128),("P029",129,"Project F",100000.00,"2024-03-07","2024-08-07","Active",11129),("P030",130,"Project H",25000.00,"2024-04-07","2024-09-07","OnHold",11130),
						  ("P031",131,"Project D",50000.00,"2024-01-09","2024-06-09","Completed",11131),("P032",132,"Project F",100000.00,"2024-02-09","2024-07-09","Active",11132),("P033",133,"Project H",25000.00,"2024-03-09","2024-08-09","Completed",11133),
						  ("P034",134,"Project F",100000.00,"2024-04-09","2024-09-09","Completed",11134),("P035",135,"Project G",35000.00,"2024-01-11","2024-06-11","Active",11135),("P036",136,"Project F",100000.00,"2024-02-11","2024-07-11","OnHold",11136),
						  ("P037",137,"Project F",100000.00,"2024-03-11","2024-08-11","Completed",11137),("P038",138,"Project G",35000.00,"2024-04-11","2024-09-11","OnHold",11138),("P039",139,"Project E",70000.00,"2024-01-13","2024-06-13","OnHold",11139),
						  ("P040",140,"Project F",100000.00,"2024-02-13","2024-07-13","Completed",11140)
insert into task values("T001",101,"Developing","P001","Team 1","2024-01-10"),("T002",102,"Developing","P002","Team 2","2024-01-15"),("T003",103,"Planning","P003","Team 3","2024-01-20"),
					   ("T004",104,"Planning","P004","Team 1","2024-01-25"),("T005",105,"Developing","P005","Team 3","2024-01-30"),("T006",106,"Developing","P006","Team 7","2024-02-05"),
					   ("T007",107,"Developing","P007","Team 1","2024-02-10"),("T008",108,"Developing","P008","Team 3","2024-02-15"),("T009",109,"Planning","P009","Team 7","2024-02-20"),
					   ("T010",110,"Testing","P010","Team 2","2024-02-25"),("T011",111,"Testing","P011","Team 3","2024-03-01"),("T012",112,"Developing","P012","Team 1","2024-03-05"),
					   ("T013",113,"Planning","P013","Team 2","2024-03-10"),("T014",114,"Developing","P014","Team 6","2024-03-15"),("T015",115,"Developing","P015","Team 2","2024-03-20"),
					   ("T016",116,"Developing","P016","Team 2","2024-03-25"),("T017",117,"Developing","P017","Team 5","2024-03-30"),("T018",118,"Developing","P018","Team 3","2024-04-05"),
					   ("T019",119,"Testing","P019","Team 2","2024-04-10"),("T020",120,"Planning","P020","Team 5","2024-04-15"),("T021",121,"Developing","P021","Team 8","2024-04-20"),
					   ("T022",122,"Developing","P022","Team 4","2024-04-25"),("T023",123,"Developing","P023","Team 5","2024-04-30"),("T024",124,"Developing","P024","Team 8","2024-05-05"),
					   ("T025",125,"Planning","P025","Team 4","2024-05-10"),("T026",126,"Testing","P026","Team 5","2024-05-15"),("T027",127,"Developing","P027","Team 8","2024-05-20"),
					   ("T028",128,"Developing","P028","Team 4","2024-05-25"),("T029",129,"Testing","P029","Team 6","2024-05-30"),("T030",130,"Testing","P030","Team 8","2024-06-05"),
					   ("T031",131,"Developing","P031","Team 4","2024-06-10"),("T032",132,"Testing","P032","Team 6","2024-06-15"),("T033",133,"Planning","P033","Team 8","2024-06-20"),
					   ("T034",134,"Developing","P034","Team 6","2024-06-25"),("T035",135,"Developing","P035","Team 7","2024-06-30"),("T036",136,"Developing","P036","Team 7","2024-07-05"),
					   ("T037",137,"Planning","P037","Team 6","2024-07-10"),("T038",138,"Developing","P038","Team 7","2024-07-15"),("T039",139,"Developing","P039","Team 6","2024-07-20"),
					   ("T040",140,"Developing","P040","Team 6","2024-07-25")
insert into taskcomment values(1,"T001",101,"Task moved to completed","Completed"),(2,"T002",102,"Task moved to completed","Completed"),(3,"T003",103,"Plan requires update","InProgress"),
							  (4,"T004",104,"Task moved to completed","Completed"),(5,"T005",105,"Need additional info","InProgress"),(6,"T006",106,"Task moved to completed","Completed"),
                              (7,"T007",107,"Task moved to completed","Completed"),(8,"T008",108,"Need additional info","InProgress"),(9,"T009",109,"Plan requires update","InProgress"),
							  (10,"T010",110,"Task moved to completed","Completed"),(11,"T011",111,"Testing is still pending","InProgress"),(12,"T012",112,"Awaiting manager approval","Pending"),
							  (13,"T013",113,"Task moved to completed","Completed"),(14,"T014",114,"Need additional info","InProgress"),(15,"T015",115,"Awaiting manager approval","Pending"),
							  (16,"T016",116,"Need additional info","InProgress"),(17,"T017",117,"Task moved to completed","Completed"),(18,"T018",118,"Awaiting manager approval","Pending"),
							  (19,"T019",119,"Testing is still pending","Pending"),(20,"T020",120,"Task moved to completed","Completed"),(21,"T021",121,"Task moved to completed ","Completed"),
							  (22,"T022",122,"Task moved to completed","Completed"),(23,"T023",123,"Testing is still pending","InProgress"),(24,"T024",124,"Final checks in progress","Pending"),
							  (25,"T025",125,"Task moved to completed","Completed"),(26,"T026",126,"Need additional info","InProgress"),(27,"T027",127,"Awaiting manager approval ","Completed"),
							  (28,"T028",128,"Task moved to completed","Completed"),(29,"T029",129,"Need additional info","InProgress"),(30,"T030",130,"All tasks completed","Pending"),
							  (31,"T031",131,"Documents archived successfully","Completed"),(32,"T032",132,"Need additional info","Pending"),(33,"T033",133,"Task moved to completed","Completed"),
							  (34,"T034",134,"Task moved to completed","Completed"),(35,"T035",135,"Documents archived successfully","Completed"),(36,"T036",136,"Awaiting manager approval","Pending"),
							  (37,"T037",137,"Task moved to completed","Completed"),(38,"T038",138,"Awaiting manager approval","Pending"),(39,"T039",139,"Awaiting manager approval ","Completed"),
							  (40,"T040",140,"Task moved to completed ","Pending")
insert into taskattachment values("A001","T001",101,"Project A","2024-12-01","Approved"),("A002","T002",102,"Project B","2024-12-02","Approved"),("A003","T003",103,"Project C","2024-12-03","Uploaded"),
								 ("A004","T004",104,"Project A","2024-12-04","Approved"),("A005","T005",105,"Project C","2024-12-05","Uploaded"),("A006","T006",106,"Project G","2024-12-06","Approved"),
								 ("A007","T007",107,"Project A","2024-12-07","Approved"),("A008","T008",108,"Project C","2024-12-08","Uploaded"),("A009","T009",109,"Project G","2024-12-09","Uploaded"),
								 ("A010","T010",110,"Project A","2024-12-10","Approved"),("A011","T011",111,"Project C","2024-12-11","Uploaded"),("A012","T012",112,"Project A","2024-12-12","Pending"),
								 ("A013","T013",113,"Project B","2024-12-13","Approved"),("A014","T014",114,"Project F","2024-12-14","Uploaded"),("A015","T015",115,"Project B","2024-12-15","Pending"),
								 ("A016","T016",116,"Project B","2024-12-16","Uploaded"),("A017","T017",117,"Project E","2024-12-17","Approved"),("A018","T018",118,"Project C","2024-12-18","Pending"),
								 ("A019","T019",119,"Project B","2024-12-19","Pending"),("A020","T020",120,"Project E","2024-12-20","Approved"),("A021","T021",121,"Project H","2024-12-21","Approved"),
								 ("A022","T022",122,"Project D","2024-12-22","Approved"),("A023","T023",123,"Project E","2024-12-23","Uploaded"),("A024","T024",124,"Project H","2024-12-24","Pending"),
								 ("A025","T025",125,"Project D","2024-12-25","Approved"),("A026","T026",126,"Project E","2024-12-26","Uploaded"),("A027","T027",127,"Project H","2024-12-27","Pending"),
								 ("A028","T028",128,"Project D","2024-12-28","Approved"),("A029","T029",129,"Project F","2024-12-29","Uploaded"),("A030","T030",130,"Project H","2024-12-30","Pending"),
								 ("A031","T031",131,"Project D","2024-12-31","Approved"),("A032","T032",132,"Project F","2024-11-30","Uploaded"),("A033","T033",133,"Project H","2024-11-29","Approved"),
								 ("A034","T034",134,"Project F","2024-11-28","Approved"),("A035","T035",135,"Project G","2024-11-27","Uploaded"),("A036","T036",136,"Project F","2024-11-26","Pending"),
							  	 ("A037","T037",137,"Project F","2024-11-25","Approved"),("A038","T038",138,"Project G","2024-11-24","Pending"),("A039","T039",139,"Project E","2024-11-23","Pending"),
								 ("A040","T040",140,"Project F","2024-11-22","Approved")
insert into projectmembers values("PM001","P001",101,"Developer",5),("PM002","P002",102,"Developer",3),("PM003","P003",103,"TeamLead",2),
								 ("PM004","P004",104,"TeamLead",8),("PM005","P005",105,"Developer",4),("PM006","P006",106,"Developer",6),
								 ("PM007","P007",107,"Developer",3),("PM008","P008",108,"Developer",2),("PM009","P009",109,"TeamLead",7),
								 ("PM010","P010",110,"Tester",5),("PM011","P011",111,"Tester",4),("PM012","P012",112,"Manager",3),
								 ("PM013","P013",113,"TeamLead",9),("PM014","P014",114,"Developer",7),("PM015","P015",115,"Manager",8),
								 ("PM016","P016",116,"Developer",1),("PM017","P017",117,"Developer",6),("PM018","P018",118,"Manager",6),
								 ("PM019","P019",119,"Tester",4),("PM020","P020",120,"TeamLead",3),("PM021","P021",121,"Developer",8),
								 ("PM022","P022",122,"Developer",6),("PM023","P023",123,"Developer",3),("PM024","P024",124,"Developer",2),
								 ("PM025","P025",125,"TeamLead",7),("PM026","P026",126,"Tester",5),("PM027","P027",127,"Manager",4),
								 ("PM028","P028",128,"Developer",3),("PM029","P029",129,"Tester",6),("PM030","P030",130,"Tester",7),
								 ("PM031","P031",131,"Manager",9),("PM032","P032",132,"Tester",1),("PM033","P033",133,"TeamLead",8),
								 ("PM034","P034",134,"Developer",6),("PM035","P035",135,"Developer",3),("PM036","P036",136,"Manager",8),
								 ("PM037","P037",137,"TeamLead",7),("PM038","P038",138,"Manager",9),("PM039","P039",139,"Manager",6),
								 ("PM040","P040",140,"Developer",3)
insert into activitylog values("L001","P001",101,"Requirement Analysis","Completed"),("L002","P002",102,"Requirement Analysis","Completed"),("L003","P003",103,"Project Planning","InProgress"),
							  ("L004","P004",104,"Project Planning","Completed"),("L005","P005",105,"Requirement Analysis","InProgress"),("L006","P006",106,"Requirement Analysis","Completed"),
							  ("L007","P007",107,"Development","Completed"),("L008","P008",108,"Development","InProgress"),("L009","P009",109,"Project Planning","InProgress"),
							  ("L010","P010",110,"Testing Execution","Completed"),("L011","P011",111,"Testing Execution","InProgress"),("L012","P012",112,"Final Approval","Pending"),
							  ("L013","P013",113,"Project Planning","Completed"),("L014","P014",114,"Development","InProgress"),("L015","P015",115,"Final Approval","Pending"),
							  ("L016","P016",116,"Development","InProgress"),("L017","P017",117,"Requirement Analysis","Completed"),("L018","P018",118,"Final Approval","Pending"),
							  ("L019","P019",119,"Testing Execution","Pending"),("L020","P020",120,"Project Planning","Completed"),("L021","P021",121,"Requirement Analysis","Completed"),
							  ("L022","P022",122,"Requirement Analysis","Completed"),("L023","P023",123,"Development","InProgress"),("L024","P024",124,"Development","Pending"),
							  ("L025","P025",125,"Project Planning","Completed"),("L026","P026",126,"Testing Execution","InProgress"),("L027","P027",127,"Final Approval","Pending"),
							  ("L028","P028",128,"Development","Completed"),("L029","P029",129,"Testing Phase1","InProgress"),("L030","P030",130,"RequirementReview","Pending"),
							  ("L031","P031",131,"Final Approval","Completed"),("L032","P032",132,"Testing Execution","InProgress"),("L033","P033",133,"Project Planning","Completed"),
						 	  ("L034","P034",134,"Requirement Analysis","Completed"),("L035","P035",135,"Testing Execution","InProgress"),("L036","P036",136,"Final Approval","Pending"),
							  ("L037","P037",137,"Project Planning","Completed"),("L038","P038",138,"Final Approval","Pending"),("L039","P039",139,"Final Approval","Pending"),
							  ("L040","P040",140,"Design Review","Completed")

select a.emp_id,a.ename,a.phone_no,b.pro_name,b.pro_cost,b.pro_status,a.estatus from users as a inner join project as b on a.user_id=b.user_id

select count(pro_name),pro_name,pro_cost from  project group by pro_name,pro_cost order by pro_cost desc limit 3

select a.emp_id,a.ename,b.task_name,b.assigned_to,b.due_date from users as a inner join task as b on a.emp_id=b.emp_id where task_name="Developing" 
union all
select a.emp_id,a.ename,b.task_name,b.assigned_to,b.due_date from users as a inner join task as b on a.emp_id=b.emp_id where task_name="Testing" 
union all
select a.emp_id,a.ename,b.task_name,b.assigned_to,b.due_date from users as a inner join task as b on a.emp_id=b.emp_id where task_name="Planning"

alter table projectmembers add column emp_salary decimal(10,2)
update projectmembers set emp_salary = 55000 where emp_id = 101
update projectmembers set emp_salary = 80000 where emp_id = 102
update projectmembers set emp_salary = 90000 where emp_id = 103
update projectmembers set emp_salary = 60000 where emp_id = 104
update projectmembers set emp_salary = 35000 where emp_id = 105
update projectmembers set emp_salary = 50000 where emp_id = 106
update projectmembers set emp_salary = 82000 where emp_id = 107
update projectmembers set emp_salary = 90000 where emp_id = 108
update projectmembers set emp_salary = 69000 where emp_id = 109
update projectmembers set emp_salary = 50000 where emp_id = 110
update projectmembers set emp_salary = 29000 where emp_id = 111
update projectmembers set emp_salary = 77000 where emp_id = 112
update projectmembers set emp_salary = 90000 where emp_id = 113
update projectmembers set emp_salary = 30000 where emp_id = 114
update projectmembers set emp_salary = 57000 where emp_id = 115
update projectmembers set emp_salary = 50000 where emp_id = 116
update projectmembers set emp_salary = 80000 where emp_id = 117
update projectmembers set emp_salary = 90000 where emp_id = 118
update projectmembers set emp_salary = 60000 where emp_id = 119
update projectmembers set emp_salary = 50000 where emp_id = 120
update projectmembers set emp_salary = 50000 where emp_id = 121
update projectmembers set emp_salary = 85000 where emp_id = 122
update projectmembers set emp_salary = 69000 where emp_id = 123
update projectmembers set emp_salary = 62000 where emp_id = 124
update projectmembers set emp_salary = 20000 where emp_id = 125
update projectmembers set emp_salary = 50000 where emp_id = 126
update projectmembers set emp_salary = 80000 where emp_id = 127
update projectmembers set emp_salary = 90000 where emp_id = 128
update projectmembers set emp_salary = 39000 where emp_id = 129
update projectmembers set emp_salary = 25000 where emp_id = 130
update projectmembers set emp_salary = 50000 where emp_id = 131
update projectmembers set emp_salary = 80000 where emp_id = 132
update projectmembers set emp_salary = 90000 where emp_id = 133
update projectmembers set emp_salary = 60000 where emp_id = 134
update projectmembers set emp_salary = 60000 where emp_id = 135
update projectmembers set emp_salary = 50000 where emp_id = 136
update projectmembers set emp_salary = 80000 where emp_id = 137
update projectmembers set emp_salary = 50000 where emp_id = 138
update projectmembers set emp_salary = 40000 where emp_id = 139
update projectmembers set emp_salary = 70000 where emp_id = 140

select sum(emp_salary) as total_salary from projectmembers
union 
select avg(emp_salary) as average_salary from projectmembers

select emp_id,emp_role, if(emp_salary >60000,"high","low") as salary_level from projectmembers

select emp_id,emp_salary,year_of_working from projectmembers where(year_of_working>=5 and emp_salary>=60000) or (year_of_working>=5 and emp_salary<=30000) order by emp_salary asc

select a.emp_id,a.pro_name,a.uploaded_by,a.attachment_status,b.work_status from taskattachment as a inner join taskcomment as b on a.task_id = b.task_id where work_status = "completed"

select * from projectmembers where emp_id < any (select emp_id from project where emp_salary<70000)

select * from activitylog where emp_id < any (select emp_id from project where activity_status = "pending" or activity_status = "inprogress")

select * from users where estatus is null
select * from users where estatus is not null
select * , ifnull(estatus,"Inactive") from users

create view logview as select * from activitylog where activity_status="Pending"
select * from logview
update logview set activity_status="OnGoing" where work_type="Final Approval"
drop view offview

Create table changes(Pro_id char(20) primary key,pro_name varchar(25),pro_cost decimal(10,2))
drop trigger task1trigger
delimiter //
create trigger task1trigger
after insert on project
for each row
begin
if new.pro_cost is null then
        insert into changes(pro_id,pro_name, pro_cost)
        values (new.pro_id,new.pro_name,(25000));
end if;
end
//
delimiter ;
insert into project(pro_id,emp_id,pro_name,pro_cost) values("P041",141,"Project I",35000),("P042",142,"Project I",35000),
                                                           ("P043",143,"Project J",null),("P044",144,"Project J",null),
                                                           ("P045",145,"Project I",35000);
select * from project
select * from changes

delimiter //
create trigger after_delete_task
after delete on task
for each row
begin
delete from project
where emp_id = old.emp_id;
end;
//
delimiter ;
delete from project where emp_id = 142;

delimiter //
create trigger task2
before update on project
for each row 
begin 
if new.pro_cost=55000 then set new.pro_cost=45000;
end if;
end
//
delimiter ;
update project set pro_cost=55000 where pro_name="Project G";

select pro_id, pro_name, pro_cost,
case
    when pro_cost >= 60000  then "high"
    when pro_cost <= 30000 then "low"
    else "average"
    end as pro_cost_range
    from project
    where pro_cost = "50000";
    
delimiter $$
create procedure task1(
in num int,
in activity varchar(35))
begin
select * from activitylog where emp_id = num and activity_status = activity;
end $$
delimiter ;
call task1("106","completed");


    
   