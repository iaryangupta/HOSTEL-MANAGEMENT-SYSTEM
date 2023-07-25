create database HOSTEL;
use HOSTEL;

create table WARDEN (W_id char(3) primary key, Gender char(1), Age int, W_Name varchar(30), Shift char(3));
create table ROOM (Room_No int primary key, Room_Type char(1), Floor_No int, W_id char(3), foreign key (W_id) references WARDEN(W_id));
create table STUDENT (Roll_No int primary key, Sex char(1), S_Name varchar(30), Phone_No char(10), Due_Fees decimal(10,2), Mess_Availed char(1), Room_No int, foreign key(Room_No) references Room(Room_No));
create table REGISTER (Roll_No int primary key, Time_IO time, Date_IO date, IN_OUT char(1), foreign key(Roll_No) references STUDENT(Roll_No)); 
create table H_PAYMENT (Start_Date date, Roll_No int, End_Date date, Amount int, primary key (Start_date, Roll_No), foreign key(Roll_No) references STUDENT(Roll_No));
create table M_PAYMENT (Start_Date date, Roll_No int, End_Date date, Amount int, primary key (Start_date, Roll_No), foreign key(Roll_No) references STUDENT(Roll_No));
create table GRIEVANCES (G_id int primary key, Roll_No int, Room_No int, G_Desc varchar (30), foreign key(Roll_No) references STUDENT(Roll_No), foreign key(Room_No) references Room(Room_No));

insert into Warden (w_id, gender,age, w_name, shift) values 
('100', 'M', 45, 'Ashok Kumar', 'Eve'),
('101', 'F', 32, 'Supriya Kumari', 'Mor'),
('102', 'M', 36, 'Balvinder Singh', 'Eve'),
('103', 'M', 43, 'Gajendar Dharal', 'Mor'),
('104', 'F', 43, 'Anita Khan', 'Mor');

insert into Room (room_no, room_type, floor_no, w_id) values 
(200, 'A', 2, '100'),
(201, 'A', 2, '100'),
(202, 'A', 2, '101'),
(203, 'A', 2, '101'),
(300, 'B', 3, '102'),
(301, 'B', 3, '102'),
(400, 'C', 4, '103'),
(401, 'C', 4, '103');

insert into student (roll_no, sex, s_name, Phone_no, due_fees, mess_availed, room_no) values
(1000, 'M','Sarthak Garg', 9999097567, 3000.00, 'N', 200 ),
(1003, 'M','Ravi Dahiya', 7799097567, 4300.00, 'Y', 200 ),
(1005, 'M','Kaliya Rajan', 8765678876, 0000.00, 'N', 201 ),
(1011, 'M','Aryan Bhatia', 9999097897, 200.00, 'Y', 201 ),
(1012, 'M','Bilal Khan', 9999097567, 3200.00, 'Y', 202 ),
(1014, 'M','Salim Siddiique', 9999097567, 5600.00, 'N', 202 ),
(1022, 'M','Chetan Prakash', 8888097567, 2120.00, 'Y', 203 ),
(1023, 'M','Walter White', 9999097561, 400.00, 'N', 300 ),
(1024, 'M','Jesse Pinkman', 9999097562, 200.00, 'N', 301 ),
(1025, 'M','Saul Goodman', 9999097563, 0, 'Y', 400 ),
(1026, 'M','Hank Scharder', 9999097564, 3300.00, 'N', 400 ),
(1027, 'M','Skyler White', 9999097565, 3300.00, 'N', 202),
(1028, 'M','Skinny Pete', 9999097569, 3300.00, 'N', 201 ),
(1029, 'M','Badger', 9999097543, 3300.00, 'Y', 300 ),
(1030, 'M','Raju', 9978097556, 3300.00, 'N', 300 ),
(1031, 'M','Shyam', 9349097578, 3300.00, 'N', 401 ),
(1032, 'M','Baburao Ganpatrao Apte', 9956097598, 3300.00, 'Y', 203 ),
(1033, 'M','Devi Prasad', 6699097544, 3300.00, 'Y', 401 ),
(1034, 'M','Hank Scharder', 9999078522, 3300.00, 'N', 401 );

insert into register(roll_no,time_io,date_io,in_out) values
(1030,'12:23:44','2023-01-22','I'),
(1031,'12:23:48','2023-01-22','O'),
(1026,'01:09:12','2023-04-04','O'),
(1003,'05:16:10','2023-02-09','O'),
(1025,'11:01:05','2023-04-15','I'),
(1011,'04:30:59','2023-03-04','I');

insert into h_payment(start_date,roll_no,end_date,amount) values
('2022-05-12',1000,'2023-09-19',50000),
('2020-01-22',1011,'2021-09-07',20000),
('2021-01-22',1022,'2022-12-06',25000),
('2020-01-22',1034,'2021-10-25',69000),
('2020-01-22',1026,'2022-10-14',42000),
('2020-01-22',1014,'2023-08-07',7000);

insert into m_payment(start_date,roll_no,end_date,amount) values
('2021-07-13',1023,'2023-09-19',3000),
('2020-01-22',1022,'2021-12-30',2000),
('2021-01-22',1000,'2022-10-26',2500),
('2020-01-22',1034,'2021-10-25',900),
('2020-01-22',1026,'2022-10-14',200),
('2020-01-22',1014,'2021-04-06',7000);

insert into grievances(g_id,roll_no,room_no,g_desc) values
(10,1003,200,'ac not working'),
(11,1011,201,'no hot water'),
(12,1023,301,'window broken'),
(13,1034,203,'fan not working'),
(14,1005,400,'no door latch');

select * from GRIEVANCES;