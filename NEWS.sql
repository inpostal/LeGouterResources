create schema NEWS_G6;
use NEWS_G6;

create table NEWS(
NEWS_ID INT primary key not null auto_increment,
EMP_ID INT,
-- foreign key(EMP_ID) reference EMP(EMP_ID);
NEWS_CONTENT VARCHAR(5000) ,
NEWS_PIC LONGBLOB,
NEWS_TIME DATETIME not null);
select*from NEWS;

