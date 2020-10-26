ALTER TABLE carInfo
	DROP
		CONSTRAINT FK_Brand_TO_carInfo
		CASCADE;

ALTER TABLE carInfo
	DROP
		CONSTRAINT FK_DetailModel_TO_carInfo
		CASCADE;

ALTER TABLE carInfo
	DROP
		CONSTRAINT FK_Model_TO_carInfo
		CASCADE;

ALTER TABLE carInfo
	DROP
		CONSTRAINT FK_Member_TO_carInfo
		CASCADE;

ALTER TABLE carInfo
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

DROP INDEX PK_carInfo;

/* 차량기본정보 */
DROP TABLE carInfo 
	CASCADE CONSTRAINTS;

/* 차량기본정보 */
CREATE TABLE carInfo (
	idx NUMBER(5) NOT NULL, /* 글번호 */
	car_Num VARCHAR2(20) NOT NULL, /* 차량번호 */
	car_size VARCHAR2(20) NOT NULL, /* 차종 */
	car_Age VARCHAR2(20) NOT NULL, /* 연식 */
	car_Color VARCHAR2(20) NOT NULL, /* 색상 */
	car_CC NUMBER(4) NOT NULL, /* 배기량 */
	car_KM NUMBER(6) NOT NULL, /* 주행거리 */
	car_Gear VARCHAR2(20) NOT NULL, /* 변속기 */
	car_Fuel VARCHAR2(30) NOT NULL, /* 연료 */
	car_Seat VARCHAR2(20), /* 인승 */
	car_Test VARCHAR2(200), /* 성능점검 */
	car_Date DATE, /* 날짜 */
	car_Yn NUMBER(4), /* 판매여부 */
	car_Price NUMBER(10) NOT NULL, /* 판매가격 */
	car_Hs NUMBER(4), /* 홈서비스 */
	B_Code NUMBER(4), /* 브랜드코드 */
	S_Code NUMBER(4), /* 세부모델코드 */
	M_Code NUMBER(4), /* 모델코드 */
	member_idx NUMBER(4), /* 회원번호 */
	car_Img1 VARCHAR2(200), /* 차사진1 */
	car_Img2 VARCHAR2(200), /* 차사진2 */
	car_Img3 VARCHAR2(200), /* 차사진3 */
	car_Intro VARCHAR2(2000), /* 차량설명 */
	car_view NUMBER(5) /* 조회수 */
);

COMMENT ON TABLE carInfo IS '차량기본정보';

COMMENT ON COLUMN carInfo.idx IS '글번호';

COMMENT ON COLUMN carInfo.car_Num IS '차량번호';

COMMENT ON COLUMN carInfo.car_size IS '차종';

COMMENT ON COLUMN carInfo.car_Age IS '연식';

COMMENT ON COLUMN carInfo.car_Color IS '색상';

COMMENT ON COLUMN carInfo.car_CC IS '배기량';

COMMENT ON COLUMN carInfo.car_KM IS '주행거리';

COMMENT ON COLUMN carInfo.car_Gear IS '변속기';

COMMENT ON COLUMN carInfo.car_Fuel IS '연료';

COMMENT ON COLUMN carInfo.car_Seat IS '인승';

COMMENT ON COLUMN carInfo.car_Test IS '성능점검';

COMMENT ON COLUMN carInfo.car_Date IS '날짜';

COMMENT ON COLUMN carInfo.car_Yn IS '판매여부';

COMMENT ON COLUMN carInfo.car_Price IS '판매가격';

COMMENT ON COLUMN carInfo.car_Hs IS '홈서비스';

COMMENT ON COLUMN carInfo.B_Code IS '브랜드코드';

COMMENT ON COLUMN carInfo.S_Code IS '세부모델코드';

COMMENT ON COLUMN carInfo.M_Code IS '모델코드';

COMMENT ON COLUMN carInfo.member_idx IS '회원번호';

COMMENT ON COLUMN carInfo.car_Img1 IS '차사진1';

COMMENT ON COLUMN carInfo.car_Img2 IS '차사진2';

COMMENT ON COLUMN carInfo.car_Img3 IS '차사진3';

COMMENT ON COLUMN carInfo.car_Intro IS '차량설명';

COMMENT ON COLUMN carInfo.car_view IS '조회수';

CREATE UNIQUE INDEX PK_carInfo
	ON carInfo (
		idx ASC
	);

ALTER TABLE carInfo
	ADD
		CONSTRAINT PK_carInfo
		PRIMARY KEY (
			idx
		);

ALTER TABLE carInfo
	ADD
		CONSTRAINT FK_Brand_TO_carInfo
		FOREIGN KEY (
			B_Code
		)
		REFERENCES Brand (
			B_Code
		);

ALTER TABLE carInfo
	ADD
		CONSTRAINT FK_DetailModel_TO_carInfo
		FOREIGN KEY (
			S_Code
		)
		REFERENCES DetailModel (
			S_Code
		);

ALTER TABLE carInfo
	ADD
		CONSTRAINT FK_Model_TO_carInfo
		FOREIGN KEY (
			M_Code
		)
		REFERENCES Model (
			M_Code
		);

ALTER TABLE carInfo
	ADD
		CONSTRAINT FK_Member_TO_carInfo
		FOREIGN KEY (
			member_idx
		)
		REFERENCES Member (
			member_idx
		);