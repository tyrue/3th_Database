
CREATE TABLE 개인인력 ( 
 인력id            VARCHAR2(10), 
 이름             VARCHAR2(10)  NOT NULL, 
 연락처          VARCHAR2(20) NOT NULL,    
 지역             VARCHAR2(30),      
 경력             NUMBER(2),
 추천수          NUMBER(10),  
 CONSTRAINT  개인인력_PK   PRIMARY KEY (인력id)); 

INSERT INTO 개인인력 VALUES ('B001', '김창수', '02-733-2312', '서울시 종로구', 5, 0);
INSERT INTO 개인인력 VALUES ('B002', '신학용', '010-2334-1222', '천안시 동남구', 1, 2);
INSERT INTO 개인인력 VALUES ('B003', '이화상', '033-433-7782', ' 대전광역시 동구', 13, 3);
INSERT INTO 개인인력 VALUES ('B004', '사이조', '010-2343-2998', '울산광역시 남구 ', 4, 0);
INSERT INTO 개인인력 VALUES ('B005', '박시상', '043-217-2333', '인천광역시 연수구', 7, 1);
INSERT INTO 개인인력 VALUES ('B006', '정시물', '042-789-3377', '대구광역시 수성구', 5, 1);
INSERT INTO 개인인력 VALUES ('B007', '이사람', '010-7235-2231', '부산광역시 서구', 8, 0);
INSERT INTO 개인인력 VALUES ('B008', '김수현', '010-7756-9515', '광주광역시 동구', 10, 4);
INSERT INTO 개인인력 VALUES ('B009', '강창수', '010-7324-2639', '목포시 산정동', 2, 1);
INSERT INTO 개인인력 VALUES ('B010', '송시효', '010-7631-2635', '서울시 용산구', 3, 0);

commit; 

CREATE TABLE  회원 ( 
 회원ID          VARCHAR2(10),
 이름             VARCHAR2(10)  NOT  NULL,
 PW               VARCHAR2(10) NOT NULL,  
 연락처         VARCHAR2(20)  NOT  NULL,
 주소            VARCHAR2(30) NOT  NULL,
 메일            VARCHAR2(30) NOT  NULL,
 실명인증여부  VARCHAR(4)  DEFAULT  'N', 
 CONSTRAINT  메일_UK  UNIQUE(메일),
 CONSTRAINT  회원_PK  PRIMARY KEY (회원ID)); 

INSERT INTO 회원 VALUES ('A001', '이정환', '2353', '010-2659-9515', '청주시 상당구' ,'ljh9515@naver.com', 'N'); 
INSERT INTO 회원 VALUES ('A002', '이환수', '5123', '010-1374-2345', '인천광역시 동구' ,'jij231@naver.com', 'Y'); 
INSERT INTO 회원 VALUES ('A003', '김태호', '1423', '010-1534-9551', '서울시 성동구' ,'llll235@gmail.com', 'N'); 
INSERT INTO 회원 VALUES ('A004', '정시립', '5532', '010-6434-1237', '고양시 덕양구' ,'1234wwd@daum.com', 'Y'); 
INSERT INTO 회원 VALUES ('A005', '하상오', '7523', '010-5235-7453', '서울시 은평구' ,'lkee23@gmail.com', 'N'); 
INSERT INTO 회원 VALUES ('A006', '백시후', '1123', '010-2123-7866', '울산광역시 북구' ,'use234@naver.com', 'N'); 
INSERT INTO 회원 VALUES ('A007', '장창호', '5599', '010-2623-9976', '부산시 동구' ,'ller99@naver.com', 'Y'); 
INSERT INTO 회원 VALUES ('A008', '황치길', '9786', '010-1245-4534', '부산시 영도구' ,'kjh4213@koreatech.ac.kr', 'Y'); 
INSERT INTO 회원 VALUES ('A009', '강상주', '2145', '010-1564-5678', '대구광역시 북구' ,'dfsfe23@naver.com', 'Y'); 
INSERT INTO 회원 VALUES ('A010', '박다라', '5422', '010-2639-4535', '서울시 강남구' ,'ijerf4535@gmail.com', 'N'); 
commit; 
 

CREATE TABLE 도매업자 ( 
 사업자번호        VARCHAR2(10), 
 이름           VARCHAR2(10)  NOT NULL, 
 연락처          VARCHAR2(20) NOT NULL,    
 주소             VARCHAR2(30),      
 CONSTRAINT  도매업자_PK   PRIMARY KEY (사업자번호)); 

INSERT INTO 도매업자 VALUES ('C001', '최수원', '010-1248-8854', '서울시 동작구 ');
INSERT INTO 도매업자 VALUES ('C002', '이창수', '010-2226-7459', '서울시 영등포구 ');
INSERT INTO 도매업자 VALUES ('C003', '김창원', '010-1512-2256', '원주시 중앙동 ');
INSERT INTO 도매업자 VALUES ('C004', '김준수', '010-5684-1582', '목포시 동명동 ');
INSERT INTO 도매업자 VALUES ('C005', '이누리', '010-4226-3325', '경주시 성동동 ');
INSERT INTO 도매업자 VALUES ('C006', '장대정', '010-1895-4515', '부산광역시 해운대구 ');
INSERT INTO 도매업자 VALUES ('C007', '박보형', '010-5221-9665', '창원시  성산구');
INSERT INTO 도매업자 VALUES ('C008', '정새롬', '010-9952-7812', '천안시 동남구 ');
INSERT INTO 도매업자 VALUES ('C009', '유상무', '010-1485-1563', '청주시 청원구 ');
INSERT INTO 도매업자 VALUES ('C010', '정연원', '010-6638-6328', '이천시 장호원읍 ');

commit; 


CREATE TABLE 취급작물( 
 사업자번호            VARCHAR2(10), 
 취급작물종류         VARCHAR2(10) , 
 CONSTRAINT  취급작물_PK   PRIMARY KEY(사업자번호, 취급작물종류),
 CONSTRAINT  도매업자_FK   FOREIGN KEY (사업자번호)
                           REFERENCES 도매업자(사업자번호));

INSERT INTO 취급작물 VALUES ('C001', '수박');
INSERT INTO 취급작물 VALUES ('C002', '마');
INSERT INTO 취급작물 VALUES ('C003', '고구마');
INSERT INTO 취급작물 VALUES ('C004', '쌀');
INSERT INTO 취급작물 VALUES ('C005', '호박');
INSERT INTO 취급작물 VALUES ('C006', '감자');
INSERT INTO 취급작물 VALUES ('C007', '딸기');
INSERT INTO 취급작물 VALUES ('C008', '상추');
INSERT INTO 취급작물 VALUES ('C009', '배추');
INSERT INTO 취급작물 VALUES ('C010', '콩');

commit; 

CREATE TABLE 인력소 
( 
 인력소번호       VARCHAR2(10),
 인력소명          VARCHAR2(14) NOT  NULL,
 사장이름          VARCHAR2(8) NOT  NULL, 
 인력소연락처    VARCHAR2(15) NOT  NULL,
 인력소주소       VARCHAR2(40) NOT  NULL,
 CONSTRAINT  인력소_PK  PRIMARY KEY (인력소번호)
);

INSERT INTO 인력소 VALUES ('D001', '대전인력소', '김인석', '042-541-1111', '대전광역시 동구 대전로779번길 37');
INSERT INTO 인력소 VALUES ('D002', '청주인력소', '이기현', '043-541-1112', '충청북도 청주시 상당구 사직대로362번길 5');
INSERT INTO 인력소 VALUES ('D003', '부산인력소', '박성진', '051-541-1113', '부산광역시 동구 중앙대로 200');
INSERT INTO 인력소 VALUES ('D004', '강원인력소', '김규연', '033-541-1114', '강원도 정선군 사북읍 하이원길 265 ');
INSERT INTO 인력소 VALUES ('D005', '광주인력소', '최인직', '062-541-1115', '광주광역시 광산구 상무대로 20');
INSERT INTO 인력소 VALUES ('D006', '전주인력소', '구자철', '063-541-1116', '전라북도 전주시 완산구 향교길 139');
INSERT INTO 인력소 VALUES ('D007', '서울인력소', '강석구', '02-541-1117', '서울특별시 송파구 올림픽로 300');
INSERT INTO 인력소 VALUES ('D008', '순천인력소', '배철순', '061-541-1118', '전라남도 순천시 낙안면 충민길 30');
INSERT INTO 인력소 VALUES ('D009', '춘천인력소', '류현석', '033-541-1119', '강원도 춘천시 동면 순환대로 1154-97');
INSERT INTO 인력소 VALUES ('D010', '우리인력소', '박기태', '052-541-1110', '대구광역시 수성구 동대구로 312');

commit; 


CREATE TABLE 장비 
( 
 장비ID            VARCHAR2(10), 
 용도              VARCHAR2(10) NOT  NULL,
 장비명         VARCHAR2(15) NOT  NULL,   
 대여여부         VARCHAR2(2)  DEFAULT  'N',       
 CONSTRAINT  장비_PK   PRIMARY KEY (장비ID),
 CONSTRAINT  장비_대여여부_CK   CHECK (대여여부 IN ('N', 'Y'))
);
 
INSERT INTO 장비 VALUES ('E001', '개간', '미니굴삭기', 'N');
INSERT INTO 장비 VALUES ('E002', '개간', '슈퍼트랙터', 'N');
INSERT INTO 장비 VALUES ('E003', '운반', '빨간경운기', 'N');
INSERT INTO 장비 VALUES ('E004', '운반', '파란경운기', 'N');
INSERT INTO 장비 VALUES ('E005', '수확', '미니콤바인', 'N');
INSERT INTO 장비 VALUES ('E006', '수확', '슈퍼콤바인', 'N');
INSERT INTO 장비 VALUES ('E007', '수확', '벼수확콤바인', 'N');
INSERT INTO 장비 VALUES ('E008', '예초', '미니예초기', 'N');
INSERT INTO 장비 VALUES ('E009', '예초', '주행식예초기', 'N');
INSERT INTO 장비 VALUES ('E010', '이앙', '승용형이앙기', 'N');

commit;

CREATE TABLE 장비업체 
( 
 장비업체번호          VARCHAR2(10), 
 업체명          VARCHAR2(20) NOT  NULL,
 사장이름          VARCHAR2(8) NOT  NULL,
 업체주소          VARCHAR2(50) NOT  NULL,
 CONSTRAINT  장비업체번호_PK   PRIMARY KEY (장비업체번호)
);

INSERT INTO 장비업체 VALUES ('F001', '기한농기계', '박기한', '충청남도 천안시 동남구 대흥로 176'); 
INSERT INTO 장비업체 VALUES ('F002', '한국농기계', '김주영', '충청남도 천안시 서북구 번영로 156 ');
INSERT INTO 장비업체 VALUES ('F003', '대한농기계', '이대영', '충청북도 청주시 상당구 문의면 청남대길 646');
INSERT INTO 장비업체 VALUES ('F004', '우리농기계', '강영규', '충청남도 서산시 부석면 간월도1길 119-29');
INSERT INTO 장비업체 VALUES ('F005', '모두농기계', '기민성', '전라남도 여수시 남면 초포길 4-1');
INSERT INTO 장비업체 VALUES ('F006', '농사농기계', '도두현', '대구광역시 달서구 두류공원로 200');
INSERT INTO 장비업체 VALUES ('F007', '조은농기계', '독고신', '대구광역시 남구 대명로 247');
INSERT INTO 장비업체 VALUES ('F008', '원리농기계', '남궁민', '경상북도 경산시 남산면 성산로 45');
INSERT INTO 장비업체 VALUES ('F009', '스마트농기계', '한성식', '경상북도 청도군 청도읍 새마을로 1387');
INSERT INTO 장비업체 VALUES ('F010', '첨단농기계', '윤민상', '경상남도 밀양시 안인로 35-1');

commit; 

CREATE TABLE 작물 (
작물ID VARCHAR2(10),
작물명 VARCHAR2(20) NOT NULL,
제철계절 VARCHAR2(8),
CONSTRAINT 작물_PK PRIMARY KEY(작물ID)
);

INSERT INTO 작물 VALUES ('H001', '고구마', '가을');
INSERT INTO 작물 VALUES ('H002', '감자', '여름');
INSERT INTO 작물 VALUES ('H003', '귤', '겨울');
INSERT INTO 작물 VALUES ('H004', '배추', '겨울');
INSERT INTO 작물 VALUES ('H005', '쑥', '봄');
INSERT INTO 작물 VALUES ('H006', '사과', '겨울');
INSERT INTO 작물 VALUES ('H007', '배', '겨울');
INSERT INTO 작물 VALUES ('H008', '수박', '여름');
INSERT INTO 작물 VALUES ('H009', '포도', '여름');
INSERT INTO 작물 VALUES ('H010', '인삼', '가을');


commit;


CREATE TABLE  지역 (
지역ID VARCHAR2(10),
지역명 VARCHAR2(15) NOT NULL,
인구수 NUMBER(12),
CONSTRAINT 지역_PK PRIMARY KEY(지역ID)
);

INSERT INTO 지역 VALUES('I001', '청송', 26368);
INSERT INTO 지역 VALUES('I002', '금산', 54500);
INSERT INTO 지역 VALUES('I003', '나주', 25300);
INSERT INTO 지역 VALUES('I004', '예산', 80438);
INSERT INTO 지역 VALUES('I005', '영동', 50486);
INSERT INTO 지역 VALUES('I006', '여주', 114545);
INSERT INTO 지역 VALUES('I007', '고창', 58174);
INSERT INTO 지역 VALUES('I008', '영월', 40040);
INSERT INTO 지역 VALUES('I009', '거창', 63057);
INSERT INTO 지역 VALUES('I010', '성환', 27929);


commit;

CREATE TABLE 온라인강의 (
강의ID VARCHAR2(10),
강의명 VARCHAR2(20) NOT NULL,
강사이름 VARCHAR2(15),
강의URL VARCHAR2(100),
CONSTRAINT 온라인강의_PK PRIMARY KEY(강의ID)
);

INSERT INTO 온라인강의 VALUES ('J001', '고구마 재배', '김한길', 'https://www.lecture.com/1');
INSERT INTO 온라인강의 VALUES ('J002', '사과 재배편 기초', '정문수', 'https://www.lecture.com/2');
INSERT INTO 온라인강의 VALUES ('J003', '수박에 대하여', '송주환', 'https://www.lecture.com/3');
INSERT INTO 온라인강의 VALUES ('J004', '인삼 관리', '신광용', 'https://www.lecture.com/4');
INSERT INTO 온라인강의 VALUES ('J005', '농사 인력 배치', '이승재', 'https://www.lecture.com/5');
INSERT INTO 온라인강의 VALUES ('J006', '어린 순 관리하기', '하태현', 'https://www.lecture.com/6');
INSERT INTO 온라인강의 VALUES ('J007', '농산물 마케팅', '신현진', 'https://www.lecture.com/7');
INSERT INTO 온라인강의 VALUES ('J008', '정착지 소개', '문시은',  'https://www.lecture.com/8');
INSERT INTO 온라인강의 VALUES ('J009', '수박 수확', '윤일환', 'https://www.lecture.com/9');
INSERT INTO 온라인강의 VALUES ('J010', '재해 재난 관리', '최대현', 'https://www.lecture.com/10');

commit;

CREATE TABLE 정부지원 ( 
 정부지원ID        VARCHAR2(10),
 지원명          VARCHAR2(30)  NOT  NULL,
 지원내용	   VARCHAR2(30), 
 정보URL          VARCHAR2(100),
 CONSTRAINT  정부지원_PK  PRIMARY KEY (정부지원ID)
);

INSERT INTO 정부지원 VALUES ('K001', '천안호두농사지원','후원금500만원', 'http://www.returnfarm.com/1');
INSERT INTO 정부지원 VALUES ('K002', '성환배농사지원','장비무료대여', 'http://www.returnfarm.com/2'); 
INSERT INTO 정부지원 VALUES ('K003', '예산사과농사지원','후원금400만원', 'http://www.returnfarm.com/3'); 
INSERT INTO 정부지원 VALUES ('K004', '금산인삼농사지원','무료 멘토링', 'http://www.returnfarm.com/4'); 
INSERT INTO 정부지원 VALUES ('K005', '홍수피해지역지원','후원금500만원', 'http://www.returnfarm.com/5'); 
INSERT INTO 정부지원 VALUES ('K006', '나주배농사지원','저금리토지비대출', 'http://www.returnfarm.com/6'); 
INSERT INTO 정부지원 VALUES ('K007', '새귀농인을위한지원','무이자2억원대출','http://www.returnfarm.com/7'); 
INSERT INTO 정부지원 VALUES ('K008', '공주밤농사지원','후원금100만원', 'http://www.returnfarm.com/8'); 
INSERT INTO 정부지원 VALUES ('K009', '횡성쌀농사지원','후원금300만원', 'http://www.returnfarm.com/9'); 
INSERT INTO 정부지원 VALUES ('K010', '영동감농사지원','장비무료대여', 'http://www.returnfarm.com/10');

commit; 


CREATE TABLE 수혜자격 ( 
 정부지원ID        VARCHAR2(10),
 수혜자격종류      VARCHAR2(35),
 CONSTRAINT  수혜자격_PK  PRIMARY KEY (정부지원ID,수혜자격종류),
 CONSTRAINT  정부지원_FK    FOREIGN KEY (정부지원ID)
                               REFERENCES 정부지원(정부지원ID)
);

INSERT INTO 수혜자격 VALUES ('K001', '경력3년이하'); 
INSERT INTO 수혜자격 VALUES ('K001', '보유면적1000천평이상'); 
INSERT INTO 수혜자격 VALUES ('K002', '필요한장비를살돈이없는사람'); 
INSERT INTO 수혜자격 VALUES ('K003', '경력5년이상'); 
INSERT INTO 수혜자격 VALUES ('K004', '경력2이하'); 
INSERT INTO 수혜자격 VALUES ('K004', '연매출이적자인사람'); 
INSERT INTO 수혜자격 VALUES ('K005', '피해규모1000만원이상'); 
INSERT INTO 수혜자격 VALUES ('K006', '토지비로인해생활고에시달리는자'); 
INSERT INTO 수혜자격 VALUES ('K007', '경력1년이하'); 
INSERT INTO 수혜자격 VALUES ('K007', '2억원이상의농사규모를보유한자');
INSERT INTO 수혜자격 VALUES ('K008', '선착순50명'); 
INSERT INTO 수혜자격 VALUES ('K009', '경력10년이상'); 
INSERT INTO 수혜자격 VALUES ('K010', '새로운장비를살의사가있는사람'); 

commit; 

CREATE TABLE 멘토 ( 
 멘토ID        VARCHAR2(10),
 이름          VARCHAR2(15)  NOT  NULL,
 경력	       NUMBER(2), 
 지역          VARCHAR2(10)  NOT  NULL,
 CONSTRAINT  멘토_PK  PRIMARY KEY (멘토ID)
);
 
INSERT INTO 멘토 VALUES ('M001','가희동','10','천안'); 
INSERT INTO 멘토 VALUES ('M002','나성은','8','아산'); 
INSERT INTO 멘토 VALUES ('M003','최성희','9','대전'); 
INSERT INTO 멘토 VALUES ('M004','라현희','11','대구'); 
INSERT INTO 멘토 VALUES ('M005','마동석','20','부산'); 
INSERT INTO 멘토 VALUES ('M006','박효신','15','서울'); 
INSERT INTO 멘토 VALUES ('M007','베컴','5','강릉'); 
INSERT INTO 멘토 VALUES ('M008','차태현','4','동해'); 
INSERT INTO 멘토 VALUES ('M009','미란다','1','금산'); 
INSERT INTO 멘토 VALUES ('M010','홍승현','5','공주'); 


commit; 


CREATE TABLE 재배작물 ( 
 멘토ID        VARCHAR2(10),
 재배작물종류  VARCHAR2(10),
 CONSTRAINT  멘토재배작물_PK  PRIMARY KEY (멘토ID,재배작물종류),
 CONSTRAINT  멘토_FK  FOREIGN KEY (멘토ID)
                          REFERENCES 멘토(멘토ID)
);
 
INSERT INTO 재배작물 VALUES ('M001', '호두'); 
INSERT INTO 재배작물 VALUES ('M001', '사과'); 
INSERT INTO 재배작물 VALUES ('M002', '자몽'); 
INSERT INTO 재배작물 VALUES ('M003', '배'); 
INSERT INTO 재배작물 VALUES ('M004', '바나나'); 
INSERT INTO 재배작물 VALUES ('M005', '인삼'); 
INSERT INTO 재배작물 VALUES ('M005', '고구마'); 
INSERT INTO 재배작물 VALUES ('M006', '감자'); 
INSERT INTO 재배작물 VALUES ('M007', '딸기'); 
INSERT INTO 재배작물 VALUES ('M008', '감'); 
INSERT INTO 재배작물 VALUES ('M009', '포도'); 
INSERT INTO 재배작물 VALUES ('M009', '수박'); 
INSERT INTO 재배작물 VALUES ('M010', '호박');  

commit; 



CREATE TABLE 대여하다 ( 
 회원ID        VARCHAR2(10), 
 장비ID        VARCHAR2(10),    
 대여일시       DATE, 
 CONSTRAINT  대여하다_PK   PRIMARY KEY(회원ID, 장비ID),
 CONSTRAINT  회원a_FK   FOREIGN KEY (회원ID)
                       REFERENCES 회원(회원ID),
 CONSTRAINT  장비a_FK   FOREIGN KEY (장비ID)
                       REFERENCES 장비(장비ID)
); 

 
INSERT INTO 대여하다 VALUES ('A001', 'E001', TO_DATE('11/18/2017','MM/DD/YYYY')); 
INSERT INTO 대여하다 VALUES ('A003', 'E010', TO_DATE('12/03/2017','MM/DD/YYYY')); 
INSERT INTO 대여하다 VALUES ('A005', 'E002', TO_DATE('11/27/2017','MM/DD/YYYY')); 
INSERT INTO 대여하다 VALUES ('A001', 'E005', TO_DATE('10/30/2017','MM/DD/YYYY')); 
INSERT INTO 대여하다 VALUES ('A006', 'E004', TO_DATE('11/23/2017','MM/DD/YYYY')); 
INSERT INTO 대여하다 VALUES ('A002', 'E006', TO_DATE('09/20/2017','MM/DD/YYYY')); 
INSERT INTO 대여하다 VALUES ('A010', 'E009', TO_DATE('11/15/2017','MM/DD/YYYY')); 
INSERT INTO 대여하다 VALUES ('A009', 'E003', TO_DATE('12/01/2017','MM/DD/YYYY')); 
INSERT INTO 대여하다 VALUES ('A002', 'E007', TO_DATE('10/21/2017','MM/DD/YYYY')); 
INSERT INTO 대여하다 VALUES ('A007', 'E008', TO_DATE('11/17/2017','MM/DD/YYYY')); 

commit;

CREATE TABLE 보유하다 ( 
 장비업체번호    VARCHAR2(10), 
 장비ID       VARCHAR2(10),    
 CONSTRAINT  보유하다_PK   PRIMARY KEY(장비업체번호, 장비ID),
 CONSTRAINT  장비업체_FK   FOREIGN KEY (장비업체번호)
                           REFERENCES 장비업체(장비업체번호),
 CONSTRAINT  장비b_FK   FOREIGN KEY (장비ID)
                        REFERENCES 장비(장비ID)
); 

INSERT INTO 보유하다 VALUES ('F001', 'E001');
INSERT INTO 보유하다 VALUES ('F004', 'E002');
INSERT INTO 보유하다 VALUES ('F006', 'E003');
INSERT INTO 보유하다 VALUES ('F007', 'E004');
INSERT INTO 보유하다 VALUES ('F010', 'E005');
INSERT INTO 보유하다 VALUES ('F001', 'E006');
INSERT INTO 보유하다 VALUES ('F001', 'E007');
INSERT INTO 보유하다 VALUES ('F003', 'E008');
INSERT INTO 보유하다 VALUES ('F003', 'E009');
INSERT INTO 보유하다 VALUES ('F002', 'E010');


commit;

CREATE TABLE 인력소_계약하다 ( 
 회원ID          VARCHAR2(10), 
 인력소번호        VARCHAR2(10),    
 계약날짜         DATE, 
 CONSTRAINT  인력소_계약하다_PK   PRIMARY KEY(회원ID, 인력소번호, 계약날짜),
 CONSTRAINT  회원b_FK   FOREIGN KEY (회원ID)
                        REFERENCES 회원(회원ID),
 CONSTRAINT  인력소_FK   FOREIGN KEY (인력소번호)
                          REFERENCES 인력소(인력소번호)) ; 

INSERT INTO 인력소_계약하다 VALUES ('A001', 'D001',  TO_DATE('06/13/2017','MM/DD/YYYY')); 
INSERT INTO 인력소_계약하다 VALUES ('A002', 'D002',  TO_DATE('04/21/2017','MM/DD/YYYY')); 
INSERT INTO 인력소_계약하다 VALUES ('A001', 'D003',  TO_DATE('07/17/2017','MM/DD/YYYY')); 
INSERT INTO 인력소_계약하다 VALUES ('A004', 'D004',  TO_DATE('11/01/2017','MM/DD/YYYY')); 
INSERT INTO 인력소_계약하다 VALUES ('A005', 'D005',  TO_DATE('09/29/2017','MM/DD/YYYY')); 
INSERT INTO 인력소_계약하다 VALUES ('A001', 'D006',  TO_DATE('09/30/2016','MM/DD/YYYY')); 
INSERT INTO 인력소_계약하다 VALUES ('A007', 'D007',  TO_DATE('08/22/2016','MM/DD/YYYY')); 
INSERT INTO 인력소_계약하다 VALUES ('A007', 'D008',  TO_DATE('08/08/2017','MM/DD/YYYY')); 
INSERT INTO 인력소_계약하다 VALUES ('A010', 'D009',  TO_DATE('10/12/2017','MM/DD/YYYY')); 
INSERT INTO 인력소_계약하다 VALUES ('A010', 'D010',  TO_DATE('12/03/2017','MM/DD/YYYY')); 

commit;

CREATE TABLE  도매업자_계약하다 
( 
 회원ID        VARCHAR2(10) NOT  NULL,
 사업자번호      VARCHAR2(10) NOT  NULL,
 계약날짜     DATE,
 CONSTRAINT  도매업자_계약하다_PK   PRIMARY KEY (회원ID, 사업자번호),
 CONSTRAINT  회원IDc_FK   FOREIGN KEY (회원ID)
                       REFERENCES  회원(회원ID),
 CONSTRAINT  사업자번호_FK   FOREIGN KEY (사업자번호)
                       REFERENCES  도매업자(사업자번호)
); 
 
INSERT INTO 도매업자_계약하다 VALUES ('A001', 'C001', TO_DATE('03/01/2017','MM/DD/YYYY'));
INSERT INTO 도매업자_계약하다 VALUES ('A002', 'C005', TO_DATE('08/11/2017','MM/DD/YYYY'));
INSERT INTO 도매업자_계약하다 VALUES ('A005', 'C004', TO_DATE('01/01/2016','MM/DD/YYYY'));
INSERT INTO 도매업자_계약하다 VALUES ('A002', 'C003', TO_DATE('08/11/2017','MM/DD/YYYY'));
INSERT INTO 도매업자_계약하다 VALUES ('A008', 'C008', TO_DATE('09/21/2017','MM/DD/YYYY'));
INSERT INTO 도매업자_계약하다 VALUES ('A009', 'C007', TO_DATE('12/31/2017','MM/DD/YYYY'));
INSERT INTO 도매업자_계약하다 VALUES ('A010', 'C006', TO_DATE('11/08/2017','MM/DD/YYYY'));
INSERT INTO 도매업자_계약하다 VALUES ('A006', 'C010', TO_DATE('09/09/2017','MM/DD/YYYY'));
INSERT INTO 도매업자_계약하다 VALUES ('A001', 'C009', TO_DATE('05/17/2017','MM/DD/YYYY'));
INSERT INTO 도매업자_계약하다 VALUES ('A007', 'C002', TO_DATE('06/20/2017','MM/DD/YYYY'));
commit; 

CREATE TABLE  소속되다 
( 
 인력ID       VARCHAR2(10) NOT  NULL,
 인력소번호     VARCHAR2(10) NOT  NULL,
 계약날짜    DATE,
 CONSTRAINT  소속되다_PK   PRIMARY KEY (인력ID, 인력소번호),
 CONSTRAINT  인력ID_FK   FOREIGN KEY (인력ID)
                       REFERENCES  개인인력(인력ID),
 CONSTRAINT  인력소번호_FK   FOREIGN KEY (인력소번호)
                       REFERENCES  인력소(인력소번호)
); 
 
INSERT INTO 소속되다 VALUES ('B001', 'D001', TO_DATE('07/10/2016','MM/DD/YYYY') );
INSERT INTO 소속되다 VALUES ('B002', 'D003', TO_DATE('01/02/2017','MM/DD/YYYY') );
INSERT INTO 소속되다 VALUES ('B003', 'D005', TO_DATE('10/09/2017','MM/DD/YYYY') );
INSERT INTO 소속되다 VALUES ('B004', 'D007', TO_DATE('09/11/2016','MM/DD/YYYY') );
INSERT INTO 소속되다 VALUES ('B005', 'D010', TO_DATE('05/12/2017','MM/DD/YYYY') );
INSERT INTO 소속되다 VALUES ('B006', 'D010', TO_DATE('08/03/2016','MM/DD/YYYY') );
INSERT INTO 소속되다 VALUES ('B010', 'D006', TO_DATE('03/01/2016','MM/DD/YYYY') );
INSERT INTO 소속되다 VALUES ('B007', 'D002', TO_DATE('11/08/2016','MM/DD/YYYY') );
INSERT INTO 소속되다 VALUES ('B001', 'D008', TO_DATE('12/08/2017','MM/DD/YYYY') );
INSERT INTO 소속되다 VALUES ('B008', 'D009', TO_DATE('06/07/2017','MM/DD/YYYY') );

commit;

CREATE TABLE  추천하다 
( 
 회원ID         VARCHAR2(10) NOT  NULL,
 개인인력ID      VARCHAR2(10) NOT  NULL,
 CONSTRAINT  추천하다_PK   PRIMARY KEY (회원ID, 개인인력ID),
 CONSTRAINT  회원IDd_FK   FOREIGN KEY (회원ID)
                       REFERENCES  회원(회원ID),
 CONSTRAINT  개인인력ID_FK   FOREIGN KEY (개인인력ID)
                       REFERENCES  개인인력(인력ID)
); 
 
INSERT INTO 추천하다 VALUES ('A001', 'B001');
INSERT INTO 추천하다 VALUES ('A001', 'B007');
INSERT INTO 추천하다 VALUES ('A003', 'B002');
INSERT INTO 추천하다 VALUES ('A009', 'B005');
INSERT INTO 추천하다 VALUES ('A010', 'B006');
INSERT INTO 추천하다 VALUES ('A002', 'B008');
INSERT INTO 추천하다 VALUES ('A005', 'B008');
INSERT INTO 추천하다 VALUES ('A008', 'B007');
INSERT INTO 추천하다 VALUES ('A006', 'B009');
INSERT INTO 추천하다 VALUES ('A004', 'B010');

commit; 



CREATE TABLE 판매하다 (

회원ID VARCHAR2(10) NOT NULL,
작물ID VARCHAR2(10) NOT NULL,
등록날짜 DATE NOT NULL,
등록개수 NUMBER(5),
판매단위 VARCHAR2(10),
판매가격 VARCHAR2(10),
CONSTRAINT 판매하다_PK PRIMARY KEY(회원ID, 작물ID, 등록날짜),
CONSTRAINT 회원IDe_FK FOREIGN KEY(회원ID)
		     REFERENCES 회원(회원ID),
CONSTRAINT 작물IDa_FK FOREIGN KEY(작물ID)
		     REFERENCES 작물(작물ID));

INSERT INTO 판매하다 VALUES ('A001', 'H001', TO_DATE('01/10/2017', 'MM/DD/YYYY'), 90, '5Kg(box)', '10만원');
INSERT INTO 판매하다 VALUES ('A006', 'H002', TO_DATE('03/20/2017', 'MM/DD/YYYY'), 25, '2kg(box)', '8만원');
INSERT INTO 판매하다 VALUES ('A004', 'H003', TO_DATE('05/16/2017', 'MM/DD/YYYY'), 20, '1kg(box)', '3만원');
INSERT INTO 판매하다 VALUES ('A008', 'H003', TO_DATE('09/25/2017', 'MM/DD/YYYY'), 10, '1kg(box)', '1만원');
INSERT INTO 판매하다 VALUES ('A009', 'H001', TO_DATE('02/06/2016', 'MM/DD/YYYY'), 35, '2kg(box)', '11만원');
INSERT INTO 판매하다 VALUES ('A002', 'H004', TO_DATE('04/10/2017', 'MM/DD/YYYY'), 30, '2kg(box)', '12만원');
INSERT INTO 판매하다 VALUES ('A002', 'H008', TO_DATE('12/24/2016', 'MM/DD/YYYY'), 40, '2kg(box)', '6만원');
INSERT INTO 판매하다 VALUES ('A001', 'H007', TO_DATE('01/07/2017', 'MM/DD/YYYY'), 15, '2kg(box)', '5만원');
INSERT INTO 판매하다 VALUES ('A003', 'H006', TO_DATE('06/03/2016', 'MM/DD/YYYY'), 10, '2kg(box)', '9만원');
INSERT INTO 판매하다 VALUES ('A010', 'H010', TO_DATE('11/15/2017', 'MM/DD/YYYY'), 60, '2kg(box)', '15만원');


commit;


CREATE TABLE 특화하다 (
지역ID VARCHAR2(10) NOT NULL,
작물ID VARCHAR2(10) NOT NULL,
CONSTRAINT 특화하다_PK PRIMARY KEY(지역ID, 작물ID),
CONSTRAINT 지역IDa_FK FOREIGN Key(지역ID)
		     REFERENCES 지역(지역ID),
CONSTRAINT 작물IDb_FK FOREIGN KEY(작물ID)
		     REFERENCES 작물(작물ID));

INSERT INTO 특화하다 VALUES ('I001', 'H001');
INSERT INTO 특화하다 VALUES ('I004', 'H006');
INSERT INTO 특화하다 VALUES ('I003', 'H007');
INSERT INTO 특화하다 VALUES ('I002', 'H010');
INSERT INTO 특화하다 VALUES ('I005', 'H009');
INSERT INTO 특화하다 VALUES ('I006', 'H001');
INSERT INTO 특화하다 VALUES ('I007', 'H008');
INSERT INTO 특화하다 VALUES ('I009', 'H009');
INSERT INTO 특화하다 VALUES ('I010', 'H007');

commit;


CREATE TABLE 선택하다 (
회원ID VARCHAR2(10) NOT NULL,
지역ID VARCHAR2(10) NOT NULL,
CONSTRAINT 선택하다_PK Primary KEY(회원ID, 지역ID),
CONSTRAINT 회원IDf_FK FOREIGN KEY(회원ID)
		     REFERENCES 회원(회원ID),
CONSTRAINT 지역IDb_FK FOREIGN KEY(지역ID)
		     REFERENCES 지역(지역ID));

INSERT INTO 선택하다 VALUES ('A001', 'I001');
INSERT INTO 선택하다 VALUES ('A002', 'I002');
INSERT INTO 선택하다 VALUES ('A003', 'I003');
INSERT INTO 선택하다 VALUES ('A004', 'I004');
INSERT INTO 선택하다 VALUES ('A005', 'I005');
INSERT INTO 선택하다 VALUES ('A001', 'I005');
INSERT INTO 선택하다 VALUES ('A008', 'I009');
INSERT INTO 선택하다 VALUES ('A006', 'I010');
INSERT INTO 선택하다 VALUES ('A010', 'I007');
INSERT INTO 선택하다 VALUES ('A007', 'I006');

commit;

CREATE TABLE 수강하다 ( 
 회원ID        VARCHAR2(10)  NOT  NULL,
 강의ID        VARCHAR2(10)  NOT  NULL,
 수강날짜        DATE  NOT NULL,
 CONSTRAINT  수강하다_PK  PRIMARY KEY (회원ID,강의ID,수강날짜),
 CONSTRAINT  회원IDg_FK  FOREIGN KEY (회원ID)
                            REFERENCES 회원(회원ID),
 CONSTRAINT  강의ID_FK  FOREIGN KEY (강의ID)
                            REFERENCES 온라인강의(강의ID)); 

INSERT INTO 수강하다 VALUES ('A001','J001',TO_DATE('03/01/2017','MM/DD/YYYY')); 
INSERT INTO 수강하다 VALUES ('A001','J003',TO_DATE('04/11/2017','MM/DD/YYYY')); 
INSERT INTO 수강하다 VALUES ('A002','J003',TO_DATE('07/10/2017','MM/DD/YYYY')); 
INSERT INTO 수강하다 VALUES ('A003','J005',TO_DATE('04/21/2017','MM/DD/YYYY')); 
INSERT INTO 수강하다 VALUES ('A004','J006',TO_DATE('01/06/2017','MM/DD/YYYY')); 
INSERT INTO 수강하다 VALUES ('A005','J005',TO_DATE('02/02/2017','MM/DD/YYYY')); 
INSERT INTO 수강하다 VALUES ('A008','J010',TO_DATE('10/18/2017','MM/DD/YYYY')); 
INSERT INTO 수강하다 VALUES ('A008','J007',TO_DATE('12/31/2017','MM/DD/YYYY')); 
INSERT INTO 수강하다 VALUES ('A009','J004',TO_DATE('11/03/2017','MM/DD/YYYY')); 
INSERT INTO 수강하다 VALUES ('A010','J009',TO_DATE('09/17/2017','MM/DD/YYYY')); 

commit; 

CREATE TABLE 지원하다 ( 
 지역ID        VARCHAR2(10)  NOT  NULL,
 정부지원ID    VARCHAR2(10)  NOT  NULL,
 검색날짜      DATE  NOT NULL, 
 CONSTRAINT  지원하다_PK  PRIMARY KEY (지역ID,정부지원ID,검색날짜),
 CONSTRAINT  지역IDc_FK  FOREIGN KEY (지역ID)
                            REFERENCES 지역(지역ID),
 CONSTRAINT  정부지원ID_FK  FOREIGN KEY (정부지원ID)
                            REFERENCES 정부지원(정부지원ID)); 

INSERT INTO 지원하다 VALUES ('I001','K001',TO_DATE('01/31/2017','MM/DD/YYYY')); 
INSERT INTO 지원하다 VALUES ('I002','K005',TO_DATE('12/26/2017','MM/DD/YYYY')); 
INSERT INTO 지원하다 VALUES ('I003','K003',TO_DATE('03/17/2017','MM/DD/YYYY')); 
INSERT INTO 지원하다 VALUES ('I003','K003',TO_DATE('04/06/2017','MM/DD/YYYY')); 
INSERT INTO 지원하다 VALUES ('I004','K001',TO_DATE('05/30/2017','MM/DD/YYYY')); 
INSERT INTO 지원하다 VALUES ('I005','K007',TO_DATE('11/28/2017','MM/DD/YYYY')); 
INSERT INTO 지원하다 VALUES ('I006','K008',TO_DATE('07/11/2017','MM/DD/YYYY')); 
INSERT INTO 지원하다 VALUES ('I008','K006',TO_DATE('08/29/2017','MM/DD/YYYY')); 
INSERT INTO 지원하다 VALUES ('I010','K010',TO_DATE('09/13/2017','MM/DD/YYYY')); 
INSERT INTO 지원하다 VALUES ('I010','K002',TO_DATE('10/02/2017','MM/DD/YYYY')); 

commit; 


CREATE TABLE 지도받다 ( 
 회원ID        VARCHAR2(10)  NOT  NULL,
 멘토ID        VARCHAR2(10)  NOT  NULL,
 지도날짜      DATE  NOT NULL, 
 CONSTRAINT  지도받다_PK  PRIMARY KEY (회원ID,멘토ID,지도날짜),
 CONSTRAINT  회원IDh_FK  FOREIGN KEY (회원ID)
                            REFERENCES 회원(회원ID),
 CONSTRAINT  멘토ID_FK  FOREIGN KEY (멘토ID)
                            REFERENCES 멘토(멘토ID)); 

INSERT INTO 지도받다 VALUES ('A001','M007',TO_DATE('02/28/2017','MM/DD/YYYY'));
INSERT INTO 지도받다 VALUES ('A002','M004',TO_DATE('07/02/2017','MM/DD/YYYY'));
INSERT INTO 지도받다 VALUES ('A005','M010',TO_DATE('03/08/2017','MM/DD/YYYY'));
INSERT INTO 지도받다 VALUES ('A003','M010',TO_DATE('07/18/2017','MM/DD/YYYY'));
INSERT INTO 지도받다 VALUES ('A010','M007',TO_DATE('01/11/2017','MM/DD/YYYY'));
INSERT INTO 지도받다 VALUES ('A009','M007',TO_DATE('10/09/2017','MM/DD/YYYY'));
INSERT INTO 지도받다 VALUES ('A005','M005',TO_DATE('12/17/2017','MM/DD/YYYY'));
INSERT INTO 지도받다 VALUES ('A007','M001',TO_DATE('09/05/2017','MM/DD/YYYY'));
INSERT INTO 지도받다 VALUES ('A009','M002',TO_DATE('10/25/2017','MM/DD/YYYY'));
INSERT INTO 지도받다 VALUES ('A010','M001',TO_DATE('04/15/2017','MM/DD/YYYY'));
 
commit; 


set scan on