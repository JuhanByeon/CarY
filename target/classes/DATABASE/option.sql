-----------------------------------可记 抛捞喉------------------------------
ALTER TABLE alloption
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

DROP INDEX PK_alloption;

/* 可记 */
DROP TABLE alloption 
	CASCADE CONSTRAINTS;

/* 可记 */
CREATE TABLE alloption (
	opt_idx NUMBER(4) NOT NULL, /* 可记锅龋 */
	opt_name VARCHAR2(50) /* 可记捞抚 */
);

COMMENT ON TABLE alloption IS '可记';

COMMENT ON COLUMN alloption.opt_idx IS '可记锅龋';

COMMENT ON COLUMN alloption.opt_name IS '可记捞抚';

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

/* 可记-瞒樊 包拌 */
DROP TABLE info_opt_rel 
	CASCADE CONSTRAINTS;

/* 可记-瞒樊 包拌 */
CREATE TABLE info_opt_rel (
	idx NUMBER(5), /* 臂锅龋 */
	opt_idx NUMBER(4) /* 可记锅龋 */
);

COMMENT ON TABLE info_opt_rel IS '可记-瞒樊 包拌';

COMMENT ON COLUMN info_opt_rel.idx IS '臂锅龋';

COMMENT ON COLUMN info_opt_rel.opt_idx IS '可记锅龋';

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