CREATE SCHEMA IF NOT EXISTS "logger-center";
Set schema 'logger-center';

-- SQLINES DEMO *** -----------
-- SQLINES DEMO *** or t_logger
-- SQLINES DEMO *** -----------
DROP TABLE IF EXISTS sys_logger;
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE SEQUENCE sys_logger_seq;

CREATE TABLE sys_logger
(
    id               int           NOT NULL DEFAULT NEXTVAL('sys_logger_seq'),
    application_name varchar(32)   NULL,
    class_name       varchar(128)  NOT NULL,
    method_name      varchar(64)   NOT NULL,
    user_id          int           NULL,
    user_name        varchar(50)   NULL,
    client_id        varchar(32)   NULL,
    operation        varchar(1024) NOT NULL,
    timestamp        varchar(30)   NOT NULL,
    PRIMARY KEY (id)
);