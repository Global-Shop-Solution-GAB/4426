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