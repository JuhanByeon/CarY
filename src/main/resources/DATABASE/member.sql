ALTER TABLE Member
	DROP
		UNIQUE (
			member_id,
			member_phone
		)
		CASCADE
		KEEP INDEX;

ALTER TABLE Member
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

DROP INDEX UIX_Member;

DROP INDEX PK_Member;

/* ȸ�� */
DROP TABLE Member 
	CASCADE CONSTRAINTS;

/* ȸ�� */
CREATE TABLE Member (
	member_idx NUMBER(4) NOT NULL, /* ȸ����ȣ */
	member_id VARCHAR2(20) NOT NULL, /* ���̵� */
	member_pwd VARCHAR2(20) NOT NULL, /* ��й�ȣ */
	member_Email VARCHAR2(50), /* �̸��� */
	member_year NUMBER(4) NOT NULL, /* �⵵ */
	member_month NUMBER(4) NOT NULL, /* �� */
	member_day NUMBER(4) NOT NULL, /* �� */
	member_sex VARCHAR2(10) NOT NULL, /* ���� */
	member_post NUMBER(5) NOT NULL, /* �����ȣ */
	member_addr1 VARCHAR2(50) NOT NULL, /* �ּ�1 */
	member_addr2 VARCHAR2(50) NOT NULL, /* �ּ�2 */
	member_name VARCHAR2(50) NOT NULL, /* �̸� */
	member_phone VARCHAR2(20) NOT NULL, /* ����ó(����) */
	member_date DATE /* ��¥ */
);

COMMENT ON TABLE Member IS 'ȸ��';

COMMENT ON COLUMN Member.member_idx IS 'ȸ����ȣ';

COMMENT ON COLUMN Member.member_id IS '���̵�';

COMMENT ON COLUMN Member.member_pwd IS '��й�ȣ';

COMMENT ON COLUMN Member.member_Email IS '�̸���';

COMMENT ON COLUMN Member.member_year IS '�⵵';

COMMENT ON COLUMN Member.member_month IS '��';

COMMENT ON COLUMN Member.member_day IS '��';

COMMENT ON COLUMN Member.member_sex IS '����';

COMMENT ON COLUMN Member.member_post IS '�����ȣ';

COMMENT ON COLUMN Member.member_addr1 IS '�ּ�1';

COMMENT ON COLUMN Member.member_addr2 IS '�ּ�2';

COMMENT ON COLUMN Member.member_name IS '�̸�';

COMMENT ON COLUMN Member.member_phone IS '����ó(����)';

COMMENT ON COLUMN Member.member_date IS '��¥';

CREATE UNIQUE INDEX PK_Member
	ON Member (
		member_idx ASC
	);

CREATE UNIQUE INDEX UIX_Member
	ON Member (
		member_id ASC,
		member_phone ASC
	);

ALTER TABLE Member
	ADD
		CONSTRAINT PK_Member
		PRIMARY KEY (
			member_idx
		);

ALTER TABLE Member
	ADD
		CONSTRAINT UK_Member
		UNIQUE (
			member_id,
			member_phone
		);