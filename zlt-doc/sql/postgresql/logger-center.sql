CREATE DATABASE ` logger-center ` DEFAULT CHARACTER SET = utf8;
Set schema 'logger-center';

-- SQLINES DEMO *** -----------
-- SQLINES DEMO *** or t_logger
-- SQLINES DEMO *** -----------
DROP TABLE IF EXISTS sys_logger;
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE SEQUENCE sys_logger_seq;

CREATE TABLE sys_logger
(
    id               int NOT NULL DEFAULT NEXTVAL('sys_logger_seq'),
    application_name varchar(32) CHARACTER SET utf8 NULL COMMENT '应用名',
    class_name       varchar(128) CHARACTER SET utf8 NOT NULL COMMENT '类名',
    method_name      varchar(64) CHARACTER SET utf8 NOT NULL COMMENT '方法名',
    user_id          int NULL COMMENT '用户id',
    user_name        varchar(50) CHARACTER SET utf8 NULL COMMENT '用户名',
    client_id        varchar(32) CHARACTER SET utf8 NULL COMMENT '租户id',
    operation        varchar(1024) CHARACTER SET utf8 NOT NULL COMMENT '操作信息',
    timestamp        varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '创建时间',
    PRIMARY KEY (id)
);