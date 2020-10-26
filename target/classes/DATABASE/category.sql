---------------------브랜드-----------------------------
ALTER TABLE Brand
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

DROP INDEX PK_Brand;

/* 브랜드 */
DROP TABLE Brand 
	CASCADE CONSTRAINTS;

/* 브랜드 */
CREATE TABLE Brand (
	B_Code NUMBER(4) NOT NULL, /* 브랜드코드 */
	B_Name VARCHAR2(20) NOT NULL /* 브랜드이름 */
);

COMMENT ON TABLE Brand IS '브랜드';

COMMENT ON COLUMN Brand.B_Code IS '브랜드코드';

COMMENT ON COLUMN Brand.B_Name IS '브랜드이름';

CREATE UNIQUE INDEX PK_Brand
	ON Brand (
		B_Code ASC
	);

ALTER TABLE Brand
	ADD
		CONSTRAINT PK_Brand
		PRIMARY KEY (
			B_Code
		);
    
----------------------------------------------------------------------
----------------------모델-----------------------------------
ALTER TABLE Model
	DROP
		CONSTRAINT FK_Brand_TO_Model
		CASCADE;

ALTER TABLE Model
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

DROP INDEX PK_Model;

/* 모델 */
DROP TABLE Model 
	CASCADE CONSTRAINTS;

/* 모델 */
CREATE TABLE Model (
	M_Code NUMBER(4) NOT NULL, /* 모델코드 */
	M_Name VARCHAR2(200) NOT NULL, /* 모델이름 */
	B_Code NUMBER(4) NOT NULL /* 브랜드코드 */
);

COMMENT ON TABLE Model IS '모델';

COMMENT ON COLUMN Model.M_Code IS '모델코드';

COMMENT ON COLUMN Model.M_Name IS '모델이름';

COMMENT ON COLUMN Model.B_Code IS '브랜드코드';

CREATE UNIQUE INDEX PK_Model
	ON Model (
		M_Code ASC
	);

ALTER TABLE Model
	ADD
		CONSTRAINT PK_Model
		PRIMARY KEY (
			M_Code
		);

ALTER TABLE Model
	ADD
		CONSTRAINT FK_Brand_TO_Model
		FOREIGN KEY (
			B_Code
		)
		REFERENCES Brand (
			B_Code
		);
-------------------------------------------------------------------
-------------------------세부모델------------------------------------
ALTER TABLE DetailModel
	DROP
		CONSTRAINT FK_Model_TO_DetailModel
		CASCADE;

ALTER TABLE DetailModel
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

DROP INDEX PK_DetailModel;

/* 세부모델 */
DROP TABLE DetailModel 
	CASCADE CONSTRAINTS;

/* 세부모델 */
CREATE TABLE DetailModel (
	S_Code NUMBER(4) NOT NULL, /* 세부모델코드 */
	S_Name VARCHAR2(200) NOT NULL, /* 세부모델 */
	M_Code NUMBER(4) NOT NULL /* 모델코드 */
);

COMMENT ON TABLE DetailModel IS '세부모델';

COMMENT ON COLUMN DetailModel.S_Code IS '세부모델코드';

COMMENT ON COLUMN DetailModel.S_Name IS '세부모델';

COMMENT ON COLUMN DetailModel.M_Code IS '모델코드';

CREATE UNIQUE INDEX PK_DetailModel
	ON DetailModel (
		S_Code ASC
	);

ALTER TABLE DetailModel
	ADD
		CONSTRAINT PK_DetailModel
		PRIMARY KEY (
			S_Code
		);

ALTER TABLE DetailModel
	ADD
		CONSTRAINT FK_Model_TO_DetailModel
		FOREIGN KEY (
			M_Code
		)
		REFERENCES Model (
			M_Code
		);
----------------------------------------------------------