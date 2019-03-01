SET FOREIGN_KEY_CHECKS=0;
CREATE TABLE oauth2_client
(
  model_id bigint NOT NULL auto_increment comment '客户端id',
  client_name varchar(128) null comment '客户端名称',
  client_id varchar(128) null comment '客户端ID',
  client_secret varchar(128) null comment '客户端安全码',
  redirect_uri varchar(128) null comment '重定向uri',
  client_uri varchar(128) null comment '客户端uri',
  client_icon_uri varchar(128) null comment '客户端图标',
  resource_ids varchar(128) null comment '资源id',
  scope varchar(128) null comment '授权范围',
  grant_types varchar(128) null comment '授权类型',
  allowed_ips varchar(128) null comment '允许的IP',
  status integer null comment '客户端状态',
  trusted integer null comment '可信',
  CONSTRAINT pk_oauth2_client PRIMARY KEY (model_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE oauth2_code
(
  model_id bigint NOT NULL auto_increment comment '令牌id',
  auth_code varchar(128) comment '授权code',
  username varchar(128) comment '令牌',
  client_id varchar(128) comment '客户端ID',
  expire_in datetime comment '过期时间',
  CONSTRAINT pk_oauth2_code PRIMARY KEY (model_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE oauth2_token
(
  model_id bigint NOT NULL auto_increment comment '令牌id',
  access_token varchar(128) comment 'token停牌',
  refresh_token varchar(128) comment '刷新令牌',
  username varchar(128) comment '用户帐号',
  client_id varchar(128) comment '客户端ID',
  expire_in datetime comment '过期时间',
  refresh_expire_in datetime comment 'refreshToken过期时间',
  scope varchar(128) comment '授权范围',
  CONSTRAINT pk_oauth2_token PRIMARY KEY (model_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE front_user
(
  model_id bigint NOT NULL auto_increment comment '用户id',
  username varchar(128) comment '帐号',
  nickname varchar(128) comment '昵称',
  realname varchar(128) comment '真实姓名',
  password varchar(128) comment '密码',
  email varchar(128) comment '邮箱',
  phone varchar(128) comment '电话',
  address varchar(128) comment '地址',
  zip varchar(128) comment '邮编',
  create_time datetime comment '创建时间',
  title varchar(128) comment '性别',
  del_flag tinyint comment '已删除',
  status tinyint comment '状态',
  sort varchar(128) comment '排序',
  CONSTRAINT pk_oauth2_token PRIMARY KEY (model_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET FOREIGN_KEY_CHECKS=1;
