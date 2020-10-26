-----------------------------------�ɼ� ���̺�------------------------------
ALTER TABLE alloption
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

DROP INDEX PK_alloption;

/* �ɼ� */
DROP TABLE alloption 
	CASCADE CONSTRAINTS;

/* �ɼ� */
CREATE TABLE alloption (
	opt_idx NUMBER(4) NOT NULL, /* �ɼǹ�ȣ */
	opt_name VARCHAR2(50) /* �ɼ��̸� */
);

COMMENT ON TABLE alloption IS '�ɼ�';

COMMENT ON COLUMN alloption.opt_idx IS '�ɼǹ�ȣ';

COMMENT ON COLUMN alloption.opt_name IS '�ɼ��̸�';

CREATE UNIQUE INDEX PK_alloption
	ON alloption (
		opt_idx ASC
	);

ALTER TABLE alloption
	ADD
		CONSTRAINT PK_alloption
		PRIMARY KEY (
			opt_idx
		);
------------------------------------------------------------------
----------relationship btw carino and option---------------
ALTER TABLE info_opt_rel
	DROP
		CONSTRAINT FK_carInfo_TO_info_opt_rel
		CASCADE;

ALTER TABLE info_opt_rel
	DROP
		CONSTRAINT FK_alloption_TO_info_opt_rel
		CASCADE;

/* �ɼ�-���� ���� */
DROP TABLE info_opt_rel 
	CASCADE CONSTRAINTS;

/* �ɼ�-���� ���� */
CREATE TABLE info_opt_rel (
	idx NUMBER(5), /* �۹�ȣ */
	opt_idx NUMBER(4) /* �ɼǹ�ȣ */
);

COMMENT ON TABLE info_opt_rel IS '�ɼ�-���� ����';

COMMENT ON COLUMN info_opt_rel.idx IS '�۹�ȣ';

COMMENT ON COLUMN info_opt_rel.opt_idx IS '�ɼǹ�ȣ';

ALTER TABLE info_opt_rel
	ADD
		CONSTRAINT FK_carInfo_TO_info_opt_rel
		FOREIGN KEY (
			idx
		)
		REFERENCES carInfo (
			idx
		);

ALTER TABLE info_opt_rel
	ADD
		CONSTRAINT FK_alloption_TO_info_opt_rel
		FOREIGN KEY (
			opt_idx
		)
		REFERENCES alloption (
			opt_idx
		);