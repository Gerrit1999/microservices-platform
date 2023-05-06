Set schema 'oauth-center';

-- SQLINES DEMO *** -----------
-- SQLINES DEMO *** or oauth_client_details
-- SQLINES DEMO *** -----------
DROP TABLE IF EXISTS oauth_client_details;
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE SEQUENCE oauth_client_details_seq;

CREATE TABLE oauth_client_details
(
    id                      int           NOT NULL DEFAULT NEXTVAL('oauth_client_details_seq'),
    client_id               varchar(32)   NOT NULL,
    resource_ids            varchar(256)  NULL     DEFAULT NULL,
    client_secret           varchar(256)  NULL     DEFAULT NULL,
    client_secret_str       varchar(256)  NULL     DEFAULT NULL,
    scope                   varchar(256)  NULL     DEFAULT NULL,
    authorized_grant_types  varchar(256)  NULL     DEFAULT NULL,
    web_server_redirect_uri varchar(256)  NULL     DEFAULT NULL,
    authorities             varchar(256)  NULL     DEFAULT NULL,
    access_token_validity   int           NULL     DEFAULT NULL,
    refresh_token_validity  int           NULL     DEFAULT NULL,
    additional_information  varchar(4096) NULL     DEFAULT '{}',
    autoapprove             char(5)       NOT NULL DEFAULT 'true',
    create_time             timestamp(0)  NULL     DEFAULT NULL,
    update_time             timestamp(0)  NULL     DEFAULT NULL,
    client_name             varchar(128)           DEFAULT '',
    support_id_token        smallint               DEFAULT 1,
    id_token_validity       int                    DEFAULT 60,
    creator_id              int,
    PRIMARY KEY (id)
);

ALTER SEQUENCE oauth_client_details_seq RESTART WITH 4;

-- SQLINES DEMO *** -----------
-- SQLINES DEMO *** client_details
-- SQLINES DEMO *** -----------
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO oauth_client_details
VALUES (1, 'webApp', NULL, '$2a$10$06msMGYRH8nrm4iVnKFNKOoddB8wOwymVhbUzw/d3ZixD7Nq8ot72', 'webApp', 'app',
        'authorization_code,password,refresh_token,client_credentials,implicit,password_code,openId,mobile_password',
        'http://127.0.0.1:8082/callback.html', NULL, 3600, NULL,
        '{"LOGOUT_NOTIFY_URL_LIST":"http://127.0.0.1:8082/logoutNotify"}', 'true', NULL, NULL, 'pc端', 1, 60, 1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO oauth_client_details
VALUES (2, 'app', NULL, '$2a$10$i3F515wEDiB4Gvj9ym9Prui0dasRttEUQ9ink4Wpgb4zEDCAlV8zO', 'app', 'app',
        'authorization_code,password,refresh_token', 'http://127.0.0.1:8081/callback.html', NULL, 3600, NULL,
        '{"LOGOUT_NOTIFY_URL_LIST":"http://127.0.0.1:8081/logoutNotify"}', 'true', NULL, NULL, '移动端', 1, 60, 1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO oauth_client_details
VALUES (3, 'zlt', NULL, '$2a$10$/o.wuORzVcXaezmYVzwYMuoY7qeWXBALwQmkskXD/7C6rqfCyPrna', 'zlt', 'all',
        'authorization_code,password,refresh_token,client_credentials', 'http://127.0.0.1:8080/singleLogin', NULL, 3600,
        28800, '{}', 'true', '2018-12-27 00:50:30', '2018-12-27 00:50:30', '第三方应用', 1, 60, 1);