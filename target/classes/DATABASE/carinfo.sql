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

/* �����⺻���� */
DROP TABLE carInfo 
	CASCADE CONSTRAINTS;

/* �����⺻���� */
CREATE TABLE carInfo (
	idx NUMBER(5) NOT NULL, /* �۹�ȣ */
	car_Num VARCHAR2(20) NOT NULL, /* ������ȣ */
	car_size VARCHAR2(20) NOT NULL, /* ���� */
	car_Age VARCHAR2(20) NOT NULL, /* ���� */
	car_Color VARCHAR2(20) NOT NULL, /* ���� */
	car_CC NUMBER(4) NOT NULL, /* ��ⷮ */
	car_KM NUMBER(6) NOT NULL, /* ����Ÿ� */
	car_Gear VARCHAR2(20) NOT NULL, /* ���ӱ� */
	car_Fuel VARCHAR2(30) NOT NULL, /* ���� */
	car_Seat VARCHAR2(20), /* �ν� */
	car_Test VARCHAR2(200), /* �������� */
	car_Date DATE, /* ��¥ */
	car_Yn NUMBER(4), /* �Ǹſ��� */
	car_Price NUMBER(10) NOT NULL, /* �ǸŰ��� */
	car_Hs NUMBER(4), /* Ȩ���� */
	B_Code NUMBER(4), /* �귣���ڵ� */
	S_Code NUMBER(4), /* ���θ��ڵ� */
	M_Code NUMBER(4), /* ���ڵ� */
	member_idx NUMBER(4), /* ȸ����ȣ */
	car_Img1 VARCHAR2(200), /* ������1 */
	car_Img2 VARCHAR2(200), /* ������2 */
	car_Img3 VARCHAR2(200), /* ������3 */
	car_Intro VARCHAR2(2000), /* �������� */
	car_view NUMBER(5) /* ��ȸ�� */
);

COMMENT ON TABLE carInfo IS '�����⺻����';

COMMENT ON COLUMN carInfo.idx IS '�۹�ȣ';

COMMENT ON COLUMN carInfo.car_Num IS '������ȣ';

COMMENT ON COLUMN carInfo.car_size IS '����';

COMMENT ON COLUMN carInfo.car_Age IS '����';

COMMENT ON COLUMN carInfo.car_Color IS '����';

COMMENT ON COLUMN carInfo.car_CC IS '��ⷮ';

COMMENT ON COLUMN carInfo.car_KM IS '����Ÿ�';

COMMENT ON COLUMN carInfo.car_Gear IS '���ӱ�';

COMMENT ON COLUMN carInfo.car_Fuel IS '����';

COMMENT ON COLUMN carInfo.car_Seat IS '�ν�';

COMMENT ON COLUMN carInfo.car_Test IS '��������';

COMMENT ON COLUMN carInfo.car_Date IS '��¥';

COMMENT ON COLUMN carInfo.car_Yn IS '�Ǹſ���';

COMMENT ON COLUMN carInfo.car_Price IS '�ǸŰ���';

COMMENT ON COLUMN carInfo.car_Hs IS 'Ȩ����';

COMMENT ON COLUMN carInfo.B_Code IS '�귣���ڵ�';

COMMENT ON COLUMN carInfo.S_Code IS '���θ��ڵ�';

COMMENT ON COLUMN carInfo.M_Code IS '���ڵ�';

COMMENT ON COLUMN carInfo.member_idx IS 'ȸ����ȣ';

COMMENT ON COLUMN carInfo.car_Img1 IS '������1';

COMMENT ON COLUMN carInfo.car_Img2 IS '������2';

COMMENT ON COLUMN carInfo.car_Img3 IS '������3';

COMMENT ON COLUMN carInfo.car_Intro IS '��������';

COMMENT ON COLUMN carInfo.car_view IS '��ȸ��';

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