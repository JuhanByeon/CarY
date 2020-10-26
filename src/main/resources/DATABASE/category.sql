---------------------�귣��-----------------------------
ALTER TABLE Brand
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

DROP INDEX PK_Brand;

/* �귣�� */
DROP TABLE Brand 
	CASCADE CONSTRAINTS;

/* �귣�� */
CREATE TABLE Brand (
	B_Code NUMBER(4) NOT NULL, /* �귣���ڵ� */
	B_Name VARCHAR2(20) NOT NULL /* �귣���̸� */
);

COMMENT ON TABLE Brand IS '�귣��';

COMMENT ON COLUMN Brand.B_Code IS '�귣���ڵ�';

COMMENT ON COLUMN Brand.B_Name IS '�귣���̸�';

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
----------------------��-----------------------------------
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

/* �� */
DROP TABLE Model 
	CASCADE CONSTRAINTS;

/* �� */
CREATE TABLE Model (
	M_Code NUMBER(4) NOT NULL, /* ���ڵ� */
	M_Name VARCHAR2(200) NOT NULL, /* ���̸� */
	B_Code NUMBER(4) NOT NULL /* �귣���ڵ� */
);

COMMENT ON TABLE Model IS '��';

COMMENT ON COLUMN Model.M_Code IS '���ڵ�';

COMMENT ON COLUMN Model.M_Name IS '���̸�';

COMMENT ON COLUMN Model.B_Code IS '�귣���ڵ�';

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
-------------------------���θ�------------------------------------
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

/* ���θ� */
DROP TABLE DetailModel 
	CASCADE CONSTRAINTS;

/* ���θ� */
CREATE TABLE DetailModel (
	S_Code NUMBER(4) NOT NULL, /* ���θ��ڵ� */
	S_Name VARCHAR2(200) NOT NULL, /* ���θ� */
	M_Code NUMBER(4) NOT NULL /* ���ڵ� */
);

COMMENT ON TABLE DetailModel IS '���θ�';

COMMENT ON COLUMN DetailModel.S_Code IS '���θ��ڵ�';

COMMENT ON COLUMN DetailModel.S_Name IS '���θ�';

COMMENT ON COLUMN DetailModel.M_Code IS '���ڵ�';

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