alter table User drop user_phone;

alter table User modify user_pic varchar(100) default 'user-icon.png';

-- 행정구 테이블 생성
CREATE TABLE `where2parkDB`.`location` (
  `location_id` INT NOT NULL,
  `district_name` VARCHAR(20) CHARACTER SET 'utf8' NOT NULL,
  PRIMARY KEY (`location_id`));
  
insert into location values (24,'중랑구');
insert into location values (23,'중구');
insert into location values (22,'종로구');
insert into location values (21,'용산구');
insert into location values (20,'영등포구');
insert into location values (19,'양천구');
insert into location values (18,'송파구');
insert into location values (17,'성북구');
insert into location values (16,'성동구');
insert into location values (15,'서초구');
insert into location values (14,'서대문구');
insert into location values (13,'마포구');
insert into location values (12,'동작구');
insert into location values (11,'동대문구');
insert into location values (10,'도봉구');
insert into location values (9,'노원구');
insert into location values (8,'금천구');
insert into location values (7,'구로구');
insert into location values (6,'광진구');
insert into location values (5,'관악구');
insert into location values (4,'강서구');
insert into location values (3,'강북구');
insert into location values (2,'강동구');
insert into location values (1,'강남구');


  
alter table CarInfo drop car_location;
alter table CarInfo add location_1 int null; 
alter table CarInfo add location_2 int null; 
alter table CarInfo add location_3 int null; 

-- 주의. CarInfo테이블 원래 데이터들 삭제하고 실행 
truncate table CarInfo;
ALTER TABLE CarInfo
ADD FOREIGN KEY (location_1) REFERENCES location(location_id) on update cascade on delete set null;
ALTER TABLE CarInfo
ADD FOREIGN KEY (location_2) REFERENCES location(location_id) on update cascade on delete set null;
ALTER TABLE CarInfo
ADD FOREIGN KEY (location_3) REFERENCES location(location_id) on update cascade on delete set null;

-- 
insert into carinfo (user_id, car_num, car_type, location_1, location_2, location_3) values (11398, '12가3456', '준중형', 13, 19 , 1);
insert into carinfo (user_id, car_num, car_type, location_1) values (13166, '12나3456', '대형', 7);
insert into carinfo (user_id, car_num, car_type, location_1, location_2) values (15972, '12다3456', '소형', 2, 3);
insert into carinfo (user_id, car_num, car_type, location_1, location_2, location_3) values (10436, '12라3456', '기타', 4, 2, 10);
insert into carinfo (user_id, car_num, car_type, location_1, location_2) values (12534, '12마3456', '중형', 1, 18);



