CREATE SCHEMA IF NOT EXISTS "tx-manager";
Set schema 'tx-manager';

-- SQLINES DEMO *** -----------
-- SQLINES DEMO *** or tx-manager
-- SQLINES DEMO *** -----------
DROP TABLE IF EXISTS t_tx_exception;
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE SEQUENCE t_tx_exception_seq;

CREATE TABLE t_tx_exception
(
    id                bigint        NOT NULL DEFAULT NEXTVAL('t_tx_exception_seq'),
    group_id          varchar(64)   NULL     DEFAULT NULL,
    unit_id           varchar(32)   NULL     DEFAULT NULL,
    mod_id            varchar(128)  NULL     DEFAULT NULL,
    transaction_state smallint      NULL     DEFAULT NULL,
    registrar         smallint      NULL     DEFAULT NULL,
    remark            varchar(4096) NULL     DEFAULT NULL,
    ex_state          smallint      NULL     DEFAULT NULL,
    create_time       timestamp(0)  NULL     DEFAULT NULL,
    PRIMARY KEY (id)
);

ALTER SEQUENCE t_tx_exception_seq RESTART WITH 1;
