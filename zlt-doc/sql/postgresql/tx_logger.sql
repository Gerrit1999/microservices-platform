CREATE SCHEMA IF NOT EXISTS "tx-logger";
Set schema 'tx-logger';

-- SQLINES DEMO *** -----------
-- SQLINES DEMO *** or t_logger
-- SQLINES DEMO *** -----------
DROP TABLE IF EXISTS t_logger;
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE SEQUENCE t_logger_seq;

CREATE TABLE t_logger
(
    id          bigint        NOT NULL DEFAULT NEXTVAL('t_logger_seq'),
    group_id    varchar(64)   NOT NULL,
    unit_id     varchar(32)   NOT NULL,
    tag         varchar(50)   NOT NULL,
    content     varchar(1024) NOT NULL,
    create_time varchar(30)   NOT NULL,
    app_name    varchar(128)  NOT NULL,
    PRIMARY KEY (id)
);

ALTER SEQUENCE t_logger_seq RESTART WITH 1;

