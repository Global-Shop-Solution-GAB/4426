CREATE TABLE "GCG_4426_CATEGORIES"(
 "CAT_ID" IDENTITY DEFAULT '0',
 "CAT_NAME" VARCHAR(15),
 "CAT_DESC" VARCHAR(50),
 "INACTIVE_FLAG" BIT DEFAULT '0' NOT NULL ,
 "CREATE_DT" DATE,
 "CREATE_USER" VARCHAR(8),
 "INACT_DT" DATE,
 "INACT_USER" VARCHAR(8),
 UNIQUE ("CAT_ID"));

 CREATE TABLE "GCG_4426_DOCUMENTS"(
 "DOC_ID" IDENTITY DEFAULT '0',
 "CAT_ID" INTEGER NOT NULL ,
 "DOC_TITLE" CHAR(15),
 "DOC_REV" VARCHAR(10),
 "DOC_DESCRIPTION" CHAR(50),
 "FILE_LOCATION" VARCHAR(250),
 "INACTIVE_FLAG" BIT DEFAULT '0' NOT NULL ,
 "CREATE_DT" DATE,
 "CREATE_USER" CHAR(8),
 "INACTIVE_DT" DATE DEFAULT '1900-01-01',
 "INACTIVE_USER" CHAR(8),
 "BIRUNID" INTEGER,
 UNIQUE ("DOC_ID"));

 CREATE TABLE "GCG_4426_EMP_CATEG"(
 "EMPLOYEE" CHAR(5),
 "CAT_ID" INTEGER);

 CREATE TABLE "GCG_4426_EMP_DOCS"(
 "EMPLOYEE" CHAR(5),
 "DOC_ID" INTEGER,
 "CAT_ID" INTEGER,
 "DATE_COMPLETED" DATE DEFAULT '1900-01-01',
 "LINK_ID" IDENTITY DEFAULT '0',
 "COMPLETED_FLAG" BIT DEFAULT '0' NOT NULL ,
 "SUPERVISOR" VARCHAR(50),
 "DEACT" BIT DEFAULT '0',
 UNIQUE ("LINK_ID"));

CREATE TABLE "GCG_4426_EMPPRINT"(
 "EMPLOYEE" CHAR(5),
 "NAME" CHAR(50),
 "DOC_ID" INTEGER,
 "CAT_ID" INTEGER,
 "DATE_COMPLETED" DATE,
 "COMPLETED" CHAR(15),
 "LINK_ID" INTEGER,
 "COMPLETED_FLAG" BIT NOT NULL ,
 "DOC_TITLE" CHAR(50),
 "DOC_REV" VARCHAR(10),
 "DOC_DESC" CHAR(100),
 "DEPT" CHAR(4),
 "TERMINATE" CHAR(10),
 "REV_DATE" DATE,
 "BIRUNID" INTEGER);
