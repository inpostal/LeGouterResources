select * from dessert;
describe dessert;
select * from product_Image;
create database DESSERT_GP5;

create table DESSERT (
DESSERT_ID INT primary key auto_increment ,
DESSERT_NAME VARCHAR(30) NOT NULL unique,
DESSERT_PRICE INT NOT NULL,
DESSERT_TYPE_ID  INT NOT NULL,
DESSERT_TIME TIMESTAMP NOT NULL,
DESSERT_CONTENT VARCHAR(300) NOT NULL,
DESSERT_STATUS BOOLEAN NOT NULL,
RATE_NUM  INT,
RATE_STAR INT
-- foreign key(DESSERT_TYPE_ID) references DESSERT_TYPE(DESSERT_TYPE_ID)
);

create table DESSERT_IMG (
DESSERT_IMG_ID INT primary key auto_increment,
DESSERT_IMG LONGBLOB,
DESSERT_ID INT NOT NULL
-- foreign key(DESSERT_ID) references DESSERT(DESSERT_ID)
);

create table DESSERT_TYPE (
DESSERT_TYPE_ID INT primary key auto_increment,
DESSERT_TYPE_NAME VARCHAR(20) NOT NULL unique
);

create table ORDERS (
ORDER_ID INT primary key auto_increment ,
MEM_ID INT NOT NULL ,
CP_ID INT NOT NULL,
ORDER_TOTAL INT NOT NULL,
CP_ORDER_TOTAL TIMESTAMP NOT NULL,
ORDER_STATUS TINYINT NOT NULL,
ORDER_TIME TIMESTAMP NOT NULL,
RECEIVER_PHONE  VARCHAR(10) NOT NULL,
RECEIVER_ADDRESS VARCHAR(100) NOT NULL,
RECEIVER_NAME VARCHAR(20) NOT NULL
-- foreign key(MEM_ID) references MEMBERS(MEM_ID)
-- foreign key(CP_ID) references COUPON_TYPE(CP_ID)
);

create table ORDER_DETAIL (
ORDER_ID INT,
DESSERT_ID INT,
PRIMARY KEY (ORDER_ID, DESSERT_ID),
DESSERT_AMOUNT INT NOT NULL,
DESSERT_PRICE  INT NOT NULL,
DESSERT_REVIEW_DATE TIMESTAMP ,
DESSERT_RATE_STAR INT
-- FOREIGN KEY (ORDER_ID) REFERENCES ORDERS (ORDER_ID),
-- FOREIGN KEY (DESSERT_ID) REFERENCES DESSERT (DESSERT_ID)
);


create table LOVE_DESSERT (
ORDER_ID INT,
MEM_ID INT,
PRIMARY KEY (ORDER_ID, MEM_ID)
-- FOREIGN KEY (ORDER_ID) REFERENCES ORDERS (ORDER_ID),
-- FOREIGN KEY (MEM_ID) REFERENCES MEMBERS (MEM_ID)		
);

create table CART_DETAIL (
DESSERT_ID INT,
MEM_ID INT,
CART_DESSERT_AMOUNT INT NOT NULL,
PRIMARY KEY (DESSERT_ID, MEM_ID)
-- FOREIGN KEY (DESSERT_ID) REFERENCES DESSERT (DESSERT_ID),
-- FOREIGN KEY (MEM_ID) REFERENCES MEMBERS (MEM_ID)		
);