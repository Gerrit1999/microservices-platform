CREATE SCHEMA IF NOT EXISTS "user-center";
SET SCHEMA 'user-center';
-- SQLINES DEMO *** -----------
-- SQLINES DEMO *** or sys_user
-- SQLINES DEMO *** -----------
DROP TABLE
        IF
                EXISTS sys_user;
-- SQLINES LICENSE FOR EVALUATION USE ONLY
DROP SEQUENCE
        IF
                EXISTS sys_user_seq;
CREATE SEQUENCE sys_user_seq;
CREATE TABLE sys_user
(
        ID           INT           NOT NULL DEFAULT NEXTVAL('sys_user_seq'),
        username     VARCHAR(50)   NOT NULL,
        PASSWORD     VARCHAR(100)  NOT NULL,
        nickname     VARCHAR(255)  NULL     DEFAULT NULL,
        head_img_url VARCHAR(1024) NULL     DEFAULT NULL,
        mobile       VARCHAR(11)   NULL     DEFAULT NULL,
        sex          SMALLINT      NULL     DEFAULT NULL,
        enabled      BOOL          NOT NULL DEFAULT TRUE,
        TYPE         VARCHAR(16)   NOT NULL,
        create_time  TIMESTAMP(0)  NULL     DEFAULT NULL,
        update_time  TIMESTAMP(0)  NULL     DEFAULT NULL,
        company      VARCHAR(255)  NULL,
        open_id      VARCHAR(32)   NULL,
        is_del       BOOL          NOT NULL DEFAULT FALSE,
        creator_id   INT,
        PRIMARY KEY (ID)
);
ALTER SEQUENCE sys_user_seq RESTART WITH 27;
DROP INDEX
    IF
        EXISTS sys_user_username_idx;
DROP INDEX
    IF
        EXISTS sys_user_mobile_idx;
DROP INDEX
    IF
        EXISTS sys_user_open_id_idx;
CREATE INDEX sys_user_username_idx ON sys_user (username);
CREATE INDEX sys_user_mobile_idx ON sys_user (mobile);
CREATE INDEX sys_user_open_id_idx ON sys_user (open_id);
-- SQLINES DEMO *** -----------
-- Records of sys_user
-- SQLINES DEMO *** -----------
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_user
VALUES (1,
        'admin',
        '$2a$10$TJkwVdlpbHKnV45.nBxbgeFHmQRmyWlshg94lFu2rKxVtT2OMniDO',
        '管理员',
        'http://pkqtmn0p1.bkt.clouddn.com/头像.png',
        '18888888888',
        0,
        true,
        'APP',
        '2017-11-17 16:56:59',
        '2019-01-08 17:05:47',
        'ENGJ',
        '123',
        false,
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_user
VALUES (2,
        'user',
        '$2a$10$OhfZv4VQJiqMEukpf1qXA.V7UMiHjr86g6lJqPvKUoHwrPk35steG',
        '体验用户',
        'http://payo7kq4i.bkt.clouddn.com/QQ%E5%9B%BE%E7%89%8720180819191900.jpg',
        '18888888887',
        1,
        true,
        'APP',
        '2017-11-17 16:56:59',
        NULL,
        'ENGJ',
        NULL,
        false,
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_user
VALUES (3,
        'test',
        '$2a$10$RD18sHNphJMmcuLuUX/Np.IV/7Ngbjd3Jtj3maFLpwaA6KaHVqPtq',
        '测试账户',
        'http://payo7kq4i.bkt.clouddn.com/QQ%E5%9B%BE%E7%89%8720180819191900.jpg',
        '13851539156',
        0,
        false,
        'APP',
        '2017-11-17 16:56:59',
        '2018-09-07 03:27:40',
        'ENGJ',
        NULL,
        false,
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_user
VALUES (4,
        '1',
        '$2a$10$9vLdwXBZaAPy/hmzEDf.M.YbrsKWGG21nqWq17/EwWPBi65GDivLa',
        '11',
        NULL,
        '13530151800',
        1,
        true,
        'APP',
        '2018-09-07 14:20:51',
        '2018-11-15 01:45:36',
        'YCC',
        NULL,
        false,
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_user
VALUES (5,
        '12',
        '$2a$10$cgRGZ0uuIAoKuwBoTWmz7eJzP4RUEr688VlnpZ4BTCz2RZEt0jrIe',
        '12',
        NULL,
        '17587132062',
        0,
        true,
        'APP',
        '2018-09-08 04:52:25',
        '2018-09-16 01:48:00',
        'YCC',
        NULL,
        false,
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_user
VALUES (6,
        'abc1',
        '$2a$10$pzvn4TfBh2oFZJbtagovFe56ZTUlTaawPnx0Yz2PeqGex0xbddAGu',
        'abc',
        NULL,
        '12345678901',
        0,
        true,
        'APP',
        '2018-09-11 08:02:25',
        '2018-09-14 06:49:54',
        'YCC',
        NULL,
        false,
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_user
VALUES (7,
        '234',
        '$2a$10$FxFvGGSi2RCe4lm5V.G0Feq6szh5ArMz.8Mzm08zQlkA.VgE9GFbm',
        'ddd',
        NULL,
        '13245678906',
        0,
        true,
        'APP',
        '2018-09-19 01:33:54',
        '2018-09-19 01:33:54',
        'JFSC',
        NULL,
        true,
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_user
VALUES (8,
        'tester',
        '$2a$10$VUfknatgKIoZJYDLIesrrO5Vg8Djw5ON2oDWeXyC24TZ6Ca/TWiye',
        'tester',
        NULL,
        '12345678901',
        0,
        true,
        'APP',
        '2018-09-19 04:52:01',
        '2018-11-16 22:12:04',
        'JFSC',
        NULL,
        true,
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_user
VALUES (9,
        '11111111111111111111',
        '$2a$10$DNaUDpCHKZI0V9w.R3wBaeD/gGOQDYjgC5fhju7bQLfIkqsZV61pi',
        'cute',
        'http://payo7kq4i.bkt.clouddn.com/C:\\Users\\GAOY91\\Pictures\\79f0f736afc37931a921fd59e3c4b74543a91170.jpg',
        '15599999991',
        1,
        true,
        'APP',
        '2018-09-19 04:57:39',
        NULL,
        'JFSC',
        NULL,
        true,
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_user
VALUES (10,
        'test001',
        '123456',
        'test001',
        NULL,
        '11111111',
        0,
        true,
        'BACKEND',
        '2018-09-12 13:50:57',
        '2019-01-07 13:04:18',
        NULL,
        NULL,
        true,
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_user
VALUES (11,
        'test002',
        '123456',
        'test002',
        NULL,
        '22222222',
        0,
        true,
        'BACKEND',
        '2018-09-11 08:02:25',
        '2018-09-14 06:49:54',
        NULL,
        NULL,
        true,
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_user
VALUES (12,
        '123',
        '$2a$10$PgngbC9pQWDT.ZG37fvV6e8Zi0C3mQOVMJJE35.XQULnppSEWhyPK',
        '12',
        NULL,
        '1',
        0,
        true,
        'BACKEND',
        '2019-01-19 13:44:02',
        '2019-01-19 13:44:02',
        NULL,
        NULL,
        true,
        1);
-- SQLINES DEMO *** -----------
-- SQLINES DEMO *** or sys_role
-- SQLINES DEMO *** -----------
DROP TABLE
    IF
        EXISTS sys_role;
-- SQLINES LICENSE FOR EVALUATION USE ONLY
DROP SEQUENCE
    IF
        EXISTS sys_role_seq;
CREATE SEQUENCE sys_role_seq;
CREATE TABLE sys_role
(
    ID          INT          NOT NULL DEFAULT NEXTVAL('sys_role_seq'),
    code        VARCHAR(32)  NOT NULL,
    NAME        VARCHAR(50)  NOT NULL,
    data_scope  VARCHAR(32)           DEFAULT 'ALL',
    create_time TIMESTAMP(0) NULL     DEFAULT NULL,
    update_time TIMESTAMP(0) NULL     DEFAULT NULL,
    tenant_id   VARCHAR(32)           DEFAULT '',
    creator_id  INT,
    PRIMARY KEY (ID)
);
ALTER SEQUENCE sys_role_seq RESTART WITH 6;
DROP INDEX
    IF
        EXISTS sys_role_code_idx;
DROP INDEX
    IF
        EXISTS sys_role_tenant_id_idx;
CREATE INDEX sys_role_code_idx ON sys_role (code);
CREATE INDEX sys_role_tenant_id_idx ON sys_role (tenant_id);
-- SQLINES DEMO *** -----------
-- Records of sys_role
-- SQLINES DEMO *** -----------
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role
VALUES (1, 'ADMIN', '管理员', 'ALL', '2017-11-17 16:56:59', '2018-09-19 09:39:10', 'webApp', 1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role
VALUES (2, 'test', '测试', 'ALL', '2018-09-17 10:15:51', '2018-11-15 01:49:14', 'webApp', 1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role
VALUES (3, '11', '11', 'ALL', '2018-11-15 01:49:19', '2018-11-15 01:49:19', 'webApp', 1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role
VALUES (4, 'shop_admin', '商城管理员', 'ALL', '2019-08-06 20:02:12.604', '2019-08-06 20:02:12.604', 'zlt', 1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role
VALUES (5, 'app_admin', '移动管理员', 'ALL', '2019-08-06 20:02:12.604', '2019-08-06 20:02:12.604', 'app', 1);
-- SQLINES DEMO *** -----------
-- SQLINES DEMO *** or sys_role_user
-- SQLINES DEMO *** -----------
DROP TABLE
    IF
        EXISTS sys_role_user;
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE sys_role_user
(
    user_id INT NOT NULL,
    role_id INT NOT NULL,
    PRIMARY KEY (user_id, role_id)
);
-- SQLINES DEMO *** -----------
-- SQLINES DEMO *** le_user
-- SQLINES DEMO *** -----------
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_user
VALUES (1, 1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_user
VALUES (2, 1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_user
VALUES (3, 1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_user
VALUES (4, 1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_user
VALUES (5, 1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_user
VALUES (6, 1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_user
VALUES (7, 2);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_user
VALUES (8, 2);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_user
VALUES (9, 3);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_user
VALUES (10, 3);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_user
VALUES (11, 4);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_user
VALUES (12, 5);
-- SQLINES DEMO *** -----------
-- SQLINES DEMO *** or sys_menu
-- SQLINES DEMO *** -----------
DROP TABLE
    IF
        EXISTS sys_menu;
-- SQLINES LICENSE FOR EVALUATION USE ONLY
DROP SEQUENCE
    IF
        EXISTS sys_menu_seq;
CREATE SEQUENCE sys_menu_seq;
CREATE TABLE sys_menu
(
        ID          INT           NOT NULL DEFAULT NEXTVAL('sys_menu_seq'),
        parent_id   INT           NOT NULL,
        NAME        VARCHAR(64)   NOT NULL,
        url         VARCHAR(1024) NULL     DEFAULT NULL,
        PATH        VARCHAR(1024) NULL     DEFAULT NULL,
        path_method VARCHAR(10)   NULL     DEFAULT NULL,
        css         VARCHAR(32)   NULL     DEFAULT NULL,
        sort        INT           NOT NULL,
        create_time TIMESTAMP(0)  NULL,
        update_time TIMESTAMP(0)  NULL,
        TYPE        SMALLINT      NOT NULL,
        hidden      BOOL          NOT NULL DEFAULT FALSE,
        tenant_id   VARCHAR(32)            DEFAULT '',
        creator_id  INT,
        PRIMARY KEY (ID)
);
ALTER SEQUENCE sys_menu_seq RESTART WITH 62;
DROP INDEX
    IF
        EXISTS sys_menu_parent_id_idx;
DROP INDEX
    IF
        EXISTS sys_menu_tenant_id_idx;
CREATE INDEX sys_menu_parent_id_idx ON sys_menu (parent_id);
CREATE INDEX sys_menu_tenant_id_idx ON sys_menu (tenant_id);
-- SQLINES DEMO *** -----------
-- Records of sys_menu
-- SQLINES DEMO *** -----------
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_menu
VALUES (2,
        12,
        '用户管理',
        '#!user',
        'system/user.html',
        NULL,
        'layui-icon-friends',
        2,
        '2017-11-17 16:56:59',
        '2018-09-19 11:26:14',
        1,
        false,
        'webApp',
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_menu
VALUES (3,
        12,
        '角色管理',
        '#!role',
        'system/role.html',
        NULL,
        'layui-icon-user',
        3,
        '2017-11-17 16:56:59',
        '2019-01-14 15:34:40',
        1,
        false,
        'webApp',
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_menu
VALUES (4,
        12,
        '菜单管理',
        '#!menus',
        'system/menus.html',
        NULL,
        'layui-icon-menu-fill',
        4,
        '2017-11-17 16:56:59',
        '2018-09-03 02:23:47',
        1,
        false,
        'webApp',
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_menu
VALUES (9,
        37,
        '文件中心',
        '#!files',
        'files/files.html',
        NULL,
        'layui-icon-file',
        3,
        '2017-11-17 16:56:59',
        '2019-01-17 20:18:44',
        1,
        false,
        'webApp',
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_menu
VALUES (10,
        37,
        '文档中心',
        '#!swagger',
        'http://127.0.0.1:9900/doc.html',
        NULL,
        'layui-icon-app',
        4,
        '2017-11-17 16:56:59',
        '2019-01-17 20:18:48',
        1,
        false,
        'webApp',
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_menu
VALUES (11,
        12,
        '我的信息',
        '#!myInfo',
        'system/myInfo.html',
        NULL,
        'layui-icon-login-qq',
        10,
        '2017-11-17 16:56:59',
        '2018-09-02 06:12:24',
        1,
        false,
        'webApp',
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_menu
VALUES (12, - 1,
        '认证管理',
        'javascript:;',
        '',
        NULL,
        'layui-icon-set',
        1,
        '2017-11-17 16:56:59',
        '2018-12-13 15:02:49',
        1,
        false,
        'webApp',
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_menu
VALUES (35,
        12,
        '应用管理',
        '#!app',
        'attestation/app.html',
        NULL,
        'layui-icon-link',
        5,
        '2017-11-17 16:56:59',
        '2019-01-14 15:35:15',
        1,
        false,
        'webApp',
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_menu
VALUES (37, - 1,
        '系统管理',
        'javascript:;',
        '',
        NULL,
        'layui-icon-set',
        2,
        '2018-08-25 10:41:58',
        '2019-01-23 14:01:58',
        1,
        false,
        'webApp',
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_menu
VALUES (62,
        63,
        '应用监控',
        '#!admin',
        'http://127.0.0.1:6500/#/wallboard',
        NULL,
        'layui-icon-chart-screen',
        4,
        '2019-01-08 15:32:19',
        '2019-01-17 20:22:44',
        1,
        false,
        'webApp',
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_menu
VALUES (63, - 1,
        '系统监控',
        'javascript:;',
        '',
        NULL,
        'layui-icon-set',
        2,
        '2019-01-10 18:35:05',
        '2019-01-10 18:35:05',
        1,
        false,
        'webApp',
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_menu
VALUES (64,
        63,
        '系统日志',
        '#!sysLog',
        'log/sysLog.html',
        NULL,
        'layui-icon-file-b',
        1,
        '2019-01-10 18:35:55',
        '2019-01-12 00:27:20',
        1,
        false,
        'webApp',
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_menu
VALUES (65,
        37,
        '代码生成器',
        '#!generator',
        'generator/list.html',
        NULL,
        'layui-icon-template',
        2,
        '2019-01-14 00:47:36',
        '2019-01-23 14:06:31',
        1,
        false,
        'webApp',
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_menu
VALUES (66,
        63,
        '慢查询SQL',
        '#!slowQueryLog',
        'log/slowQueryLog.html',
        NULL,
        'layui-icon-snowflake',
        2,
        '2019-01-16 12:00:27',
        '2019-01-16 15:32:31',
        1,
        false,
        'webApp',
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_menu
VALUES (67, - 1,
        '任务管理',
        '#!job',
        'http://127.0.0.1:8081/',
        NULL,
        'layui-icon-date',
        3,
        '2019-01-17 20:18:22',
        '2019-01-23 14:01:53',
        1,
        false,
        'webApp',
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_menu
VALUES (68,
        63,
        '应用吞吐量监控',
        '#!sentinel',
        'http://127.0.0.1:6999',
        NULL,
        'layui-icon-chart',
        5,
        '2019-01-22 16:31:55',
        '2019-01-22 16:34:03',
        1,
        false,
        'webApp',
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_menu
VALUES (69,
        37,
        '配置中心',
        '#!nacos',
        'http://127.0.0.1:8848/nacos',
        NULL,
        'layui-icon-tabs',
        1,
        '2019-01-23 14:06:10',
        '2019-01-23 14:06:10',
        1,
        false,
        'webApp',
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_menu
VALUES (70,
        63,
        'APM监控',
        '#!apm',
        'http://127.0.0.1:8080',
        NULL,
        'layui-icon-engine',
        6,
        '2019-02-27 10:31:55',
        '2019-02-27 10:31:55',
        1,
        false,
        'webApp',
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_menu
VALUES (71, - 1,
        '搜索管理',
        'javascript:;',
        '',
        NULL,
        'layui-icon-set',
        3,
        '2018-08-25 10:41:58',
        '2019-01-23 15:07:07',
        1,
        false,
        'webApp',
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_menu
VALUES (72,
        71,
        '索引管理',
        '#!index',
        'search/index_manager.html',
        NULL,
        'layui-icon-template',
        1,
        '2019-01-10 18:35:55',
        '2019-01-12 00:27:20',
        1,
        false,
        'webApp',
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_menu
VALUES (73,
        71,
        '用户搜索',
        '#!userSearch',
        'search/user_search.html',
        NULL,
        'layui-icon-user',
        2,
        '2019-01-10 18:35:55',
        '2019-01-12 00:27:20',
        1,
        false,
        'webApp',
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_menu
VALUES (74,
        12,
        'Token管理',
        '#!tokens',
        'system/tokens.html',
        NULL,
        'layui-icon-unlink',
        6,
        '2019-07-11 16:56:59',
        '2019-07-11 16:56:59',
        1,
        false,
        'webApp',
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_menu
VALUES (75,
        2,
        '用户列表',
        '/api-user/users',
        'user-list',
        'GET',
        NULL,
        1,
        '2019-07-29 16:56:59',
        '2019-07-29 16:56:59',
        2,
        false,
        'webApp',
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_menu
VALUES (76,
        2,
        '查询用户角色',
        '/api-user/roles',
        'user-roles',
        'GET',
        NULL,
        2,
        '2019-07-29 16:56:59',
        '2019-07-29 16:56:59',
        2,
        false,
        'webApp',
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_menu
VALUES (77,
        2,
        '用户添加',
        '/api-user/users/saveOrUpdate',
        'user-btn-add',
        'POST',
        NULL,
        3,
        '2019-07-29 16:56:59',
        '2019-07-29 16:56:59',
        2,
        false,
        'webApp',
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_menu
VALUES (78,
        2,
        '用户导出',
        '/api-user/users/export',
        'user-btn-export',
        'POST',
        NULL,
        4,
        '2019-07-29 16:56:59',
        '2019-07-29 16:56:59',
        2,
        false,
        'webApp',
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_menu
VALUES (79,
        2,
        '用户导入',
        '/api-user/users/import',
        'user-btn-import',
        'POST',
        NULL,
        5,
        '2019-07-29 16:56:59',
        '2019-07-29 16:56:59',
        2,
        false,
        'webApp',
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_menu
VALUES (80, - 1,
        '用户管理',
        '#!user',
        '',
        NULL,
        NULL,
        1,
        '2019-08-06 20:02:12.604',
        '2019-08-06 20:02:12.604',
        1,
        false,
        'zlt',
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_menu
VALUES (81, - 1,
        '商品管理',
        '#!product',
        '',
        NULL,
        NULL,
        2,
        '2019-08-06 20:02:12.604',
        '2019-08-06 20:02:12.604',
        1,
        false,
        'zlt',
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_menu
VALUES (82, - 1,
        '支付管理',
        '#!pay',
        '',
        NULL,
        NULL,
        3,
        '2019-08-06 20:02:12.604',
        '2019-08-06 20:02:12.604',
        1,
        false,
        'zlt',
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_menu
VALUES (83, - 1,
        '交易管理',
        '#!trading',
        '',
        NULL,
        NULL,
        4,
        '2019-08-06 20:02:12.604',
        '2019-08-06 20:02:12.604',
        1,
        false,
        'zlt',
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_menu
VALUES (84, - 1,
        '系统管理',
        '#!system',
        '',
        NULL,
        NULL,
        1,
        '2019-08-06 20:02:12.604',
        '2019-08-06 20:02:12.604',
        1,
        false,
        'app',
        1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_menu
VALUES (85,
        63,
        '审计日志',
        '#!auditLog',
        'log/auditLog.html',
        NULL,
        'layui-icon-file-b',
        3,
        '2020-02-04 12:00:27',
        '2020-02-04 15:32:31',
        1,
        false,
        'webApp',
        1);
-- SQLINES DEMO *** -----------
-- SQLINES DEMO *** or sys_role_menu
-- SQLINES DEMO *** -----------
DROP TABLE
    IF
        EXISTS sys_role_menu;
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE sys_role_menu
(
    role_id INT NOT NULL,
    menu_id INT NOT NULL,
    PRIMARY KEY (role_id, menu_id)
);
-- SQLINES DEMO *** -----------
-- SQLINES DEMO *** le_menu
-- SQLINES DEMO *** -----------
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (1, 2);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (1, 3);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (1, 4);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (1, 9);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (1, 10);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (1, 11);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (1, 12);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (1, 35);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (1, 37);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (1, 62);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (1, 63);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (1, 64);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (1, 65);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (1, 66);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (1, 67);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (1, 68);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (1, 69);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (1, 70);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (1, 71);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (1, 72);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (1, 73);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (1, 74);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (1, 75);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (1, 76);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (1, 77);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (1, 78);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (1, 79);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (1, 85);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (2, 2);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (2, 3);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (2, 4);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (2, 11);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (2, 12);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (2, 35);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (3, 2);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (3, 3);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (3, 4);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (3, 12);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (4, 80);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (4, 81);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (4, 82);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (4, 83);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO sys_role_menu
VALUES (5, 84);