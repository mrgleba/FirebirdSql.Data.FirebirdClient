SET SQL DIALECT 3;

SET NAMES NONE;

CREATE TABLE SESSIONS (
    SESSIONID           VARCHAR(80) CHARACTER SET OCTETS NOT NULL,
    APPLICATIONNAME     VARCHAR(100) CHARACTER SET UNICODE_FSS NOT NULL,
    CREATED             TIMESTAMP,
    EXPIRES             TIMESTAMP,
    LOCKDATE            TIMESTAMP,
    LOCKID              INTEGER,
    TIMEOUT             INTEGER,
    LOCKED              SMALLINT,
    SESSIONITEMS        BLOB SUB_TYPE 1 SEGMENT SIZE 4096,
    FLAGS               INTEGER
);

CREATE UNIQUE INDEX SESSIONS_IDX1 ON SESSIONS (SESSIONID, APPLICATIONNAME); 