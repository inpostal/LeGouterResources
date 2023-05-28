CREATE DATABASE IF NOT EXISTS ms01;
use ms01;

-- 團購方案
create table `GROUP` (
GROUP_ACTIVITY_ID int unsigned primary key,
GROUP_PRODUCT_NAME varchar(50) not null,
GROUP_ACTIVITY_CONTENT varchar(200) not null,
GROUP_ORDER_STAR datetime not null,
GROUP_ORDER_END datetime not null,
GROUP_NAME varchar(40),
GROUP_ORDER_MIN int not null,
GROUP_ORDER_DISCOUNT decimal(3,2) not null
);

-- 團購商品
create table GROUP_PRODUCT (
GROUP_PRODUCT_ID int unsigned primary key,
GROUP_PRODUCT_NAME varchar(40) not null,
GROUP_PRODUCT_CONTENT varchar(200) not null,
GROUP_PRODUCT_PRICE int not null,
GROUP_PRODUCT_STARDATE date not null,
GROUP_PRODUCT_TIMEGROUP_PRODUCT_ENDDATE date not null,
GROUP_PRODUCT_STATUS boolean not null,
GROUP_ACTIVITY_ID int not null
-- constraint fk_GROUPPRODUCT_GROUP
-- foreign key(GROUP_ACTIVITY_ID) references `GROUP`(GROUP_ACTIVITY_ID)
);

-- 團購訂單
create table GROUP_ORDER_MASTER(
GROUP_ORDER_ID int unsigned primary key,
GROUP_ORDER_MASTER_ID int not null,
GROUP_PRODUCT_ID int not null,
NUMBER_OF_PRODUCT int not null,
GROUP_ORDER_STATUS tinyint not null,
GROUP_ORDER_BONUS int not null,
TOTAL_GROUP_PRODUCT_PRICE int not null
-- constraint fk_GROUPORDERMASTER_Members
-- foreign key(GROUP_ORDER_MASTER_ID) references Members(MEM_ID),
-- constraint fk_GROUPORDERMASTER_GROUPPRODUCT
-- foreign key(GROUP_PRODUCT_ID) references GROUP_PRODUCT(GROUP_PRODUCT_ID)
);

-- 團購訂單明細
create table GROUP_ORDER_DETAIL (
GROUP_ORDER_ID int not null,
MEM_ID int not null,
GROUP_ORDER_AMOUNT int not null,
GROUP_PRODUCT_PAYING tinyint not null,
GROUP_PRODUCT_STATUS tinyint not null,
GROUP_PRODUCT_OTHERS varchar(150),
RECEIVER_NAME varchar(50) not null,
RECEIVER_ADDRESS varchar(100) not null,
RECEIVER_PHONE varchar(10) not null,
GROUP_PRODUCT_PRICE int not null
-- constraint fk_GROUPORDERDETAIL_GROUPORDERMASTER
-- foreign key(GROUP_ORDER_ID) references GROUP_ORDER_MASTER(GROUP_ORDER_ID),
-- constraint fk_GROUPORDERDETAIL_Members
-- foreign key(MEM_ID) references Members(MEM_ID),
-- primary key(GROUP_ORDER_ID, MEM_ID)
);

-- 團購商品圖片
create table GROUP_PRODUCT_IMG (
GROUP_PRODUCT_IMG_ID int unsigned primary key,
GROUP_PRODUCT_ID int not null,
GOURP_PRODUCT_IMG longblob
-- constraint fk_GROUPPRODUCTIMG_GROUPPRODUCT
-- foreign key(GROUP_PRODUCT_ID) references GROUP_PRODUCT(GROUP_PRODUCT_ID)
);

drop table GROUP_PRODUCT_IMG;
drop table GROUP_ORDER_DETAIL;
drop table GROUP_ORDER_MASTER;
drop table GROUP_PRODUCT;
drop table `GROUP`;
drop database ms01;