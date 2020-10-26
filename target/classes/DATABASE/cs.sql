ALTER TABLE CS
	DROP
		CONSTRAINT FK_Member_TO_CS
		CASCADE;

ALTER TABLE CS
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

DROP INDEX PK_CS;

/* ������ */
DROP TABLE CS 
	CASCADE CONSTRAINTS;

/* ������ */
CREATE TABLE CS (
	cs_idx NUMBER(4) NOT NULL, /* �����ͱ۹�ȣ */
	cs_tit VARCHAR2(100) NOT NULL, /* ���� */
	cs_content VARCHAR2(1000) NOT NULL, /* ���� */
	cs_writer VARCHAR2(20), /* �ۼ���(ID) */
	cs_date DATE, /* ��¥ */
	cs_secret NUMBER(4), /* �������� */
	member_idx NUMBER(4) /* ȸ����ȣ */
);

COMMENT ON TABLE CS IS '������';

COMMENT ON COLUMN CS.cs_idx IS '�����ͱ۹�ȣ';

COMMENT ON COLUMN CS.cs_tit IS '����';

COMMENT ON COLUMN CS.cs_content IS '����';

COMMENT ON COLUMN CS.cs_writer IS '�ۼ���(ID)';

COMMENT ON COLUMN CS.cs_date IS '��¥';

COMMENT ON COLUMN CS.cs_secret IS '��������';

COMMENT ON COLUMN CS.member_idx IS 'ȸ����ȣ';

CREATE UNIQUE INDEX PK_CS
	ON CS (
		cs_idx ASC
	);

ALTER TABLE CS
	ADD
		CONSTRAINT PK_CS
		PRIMARY KEY (
			cs_idx
		);

ALTER TABLE CS
	ADD
		CONSTRAINT FK_Member_TO_CS
		FOREIGN KEY (
			member_idx
		)
		REFERENCES Member (
			member_idx
		);