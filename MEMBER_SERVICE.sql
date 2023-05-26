create table MEMBER_SERVICE_RECORD (
MSR_ID INT primary key NOT NULL ,
EMP_ID INT NOT NULL ,
MEM_ID INT NOT NULL,
MSR_TEXT VARCHAR(500),
MSR_TIME TIMESTAMP NOT NULL,
DIRECTION TINYINT NOT NULL
-- foreign key(MEM_ID) references MEMBERS(MEM_ID),
-- foreign key(EMP_ID) references EMP(EMP_ID)
);