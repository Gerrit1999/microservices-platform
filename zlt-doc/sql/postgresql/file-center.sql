Set schema 'file_center';

-- SQLINES DEMO *** -----------
-- SQLINES DEMO *** or file_info
-- SQLINES DEMO *** -----------
DROP TABLE IF EXISTS file_info;
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE file_info
(
    id           varchar(32)   NOT NULL,
    name         varchar(128)  NOT NULL,
    is_img       smallint      NOT NULL,
    content_type varchar(128)  NOT NULL,
    size         int           NOT NULL,
    path         varchar(255)  NULL DEFAULT NULL,
    url          varchar(1024) NOT NULL,
    source       varchar(32)   NOT NULL,
    create_time  timestamp(0)  NULL DEFAULT NULL,
    update_time  timestamp(0)  NULL DEFAULT NULL,
    tenant_id    varchar(32)        DEFAULT '',
    PRIMARY KEY (id)
);

CREATE INDEX idx_create_time ON file_info (create_time);
CREATE INDEX idx_tenant_id ON file_info (tenant_id);

-- SQLINES DEMO *** -----------
-- SQLINES DEMO *** nfo
-- SQLINES DEMO *** -----------
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO file_info
VALUES ('2c95b54f4d8356cf8ab40802f496df83', '头像.png', 1, 'image/png', 1290,
        'http://pkqtmn0p1.bkt.clouddn.com/头像.png', 'http://pkqtmn0p1.bkt.clouddn.com/头像.png', 'QINIU',
        '2019-01-08 17:05:36', '2019-01-08 17:05:36', 'webApp');
