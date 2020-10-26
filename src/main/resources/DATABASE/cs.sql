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

/* 고객센터 */
DROP TABLE CS 
	CASCADE CONSTRAINTS;

/* 고객센터 */
CREATE TABLE CS (
	cs_idx NUMBER(4) NOT NULL, /* 고객센터글번호 */
	cs_tit VARCHAR2(100) NOT NULL, /* 제목 */
	cs_content VARCHAR2(1000) NOT NULL, /* 내용 */
	cs_writer VARCHAR2(20), /* 작성자(ID) */
	cs_date DATE, /* 날짜 */
	cs_secret NUMBER(4), /* 공개여부 */
	member_idx NUMBER(4) /* 회원번호 */
);

COMMENT ON TABLE CS IS '고객센터';

COMMENT ON COLUMN CS.cs_idx IS '고객센터글번호';

COMMENT ON COLUMN CS.cs_tit IS '제목';

COMMENT ON COLUMN CS.cs_content IS '내용';

COMMENT ON COLUMN CS.cs_writer IS '작성자(ID)';

COMMENT ON COLUMN CS.cs_date IS '날짜';

COMMENT ON COLUMN CS.cs_secret IS '공개여부';

COMMENT ON COLUMN CS.member_idx IS '회원번호';

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