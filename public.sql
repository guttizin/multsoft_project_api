/*
 Navicat Premium Data Transfer

 Source Server         : _Test_Postgres12
 Source Server Type    : PostgreSQL
 Source Server Version : 120003
 Source Host           : localhost:5433
 Source Catalog        : multisoft
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 120003
 File Encoding         : 65001

 Date: 26/04/2021 02:15:56
*/


-- ----------------------------
-- Sequence structure for alugueis_aluguel_filme_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."alugueis_aluguel_filme_id_seq";
CREATE SEQUENCE "public"."alugueis_aluguel_filme_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for alugueis_aluguel_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."alugueis_aluguel_id_seq";
CREATE SEQUENCE "public"."alugueis_aluguel_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for auth_group_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_group_id_seq";
CREATE SEQUENCE "public"."auth_group_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for auth_group_permissions_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_group_permissions_id_seq";
CREATE SEQUENCE "public"."auth_group_permissions_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for auth_permission_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_permission_id_seq";
CREATE SEQUENCE "public"."auth_permission_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for auth_user_groups_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_user_groups_id_seq";
CREATE SEQUENCE "public"."auth_user_groups_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for auth_user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_user_id_seq";
CREATE SEQUENCE "public"."auth_user_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for auth_user_user_permissions_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_user_user_permissions_id_seq";
CREATE SEQUENCE "public"."auth_user_user_permissions_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for clientes_cliente_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."clientes_cliente_id_seq";
CREATE SEQUENCE "public"."clientes_cliente_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for django_admin_log_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."django_admin_log_id_seq";
CREATE SEQUENCE "public"."django_admin_log_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for django_content_type_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."django_content_type_id_seq";
CREATE SEQUENCE "public"."django_content_type_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for django_migrations_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."django_migrations_id_seq";
CREATE SEQUENCE "public"."django_migrations_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for enderecos_endereco_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."enderecos_endereco_id_seq";
CREATE SEQUENCE "public"."enderecos_endereco_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for filmes_filme_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."filmes_filme_id_seq";
CREATE SEQUENCE "public"."filmes_filme_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for alugueis_aluguel
-- ----------------------------
DROP TABLE IF EXISTS "public"."alugueis_aluguel";
CREATE TABLE "public"."alugueis_aluguel" (
  "id" int8 NOT NULL DEFAULT nextval('alugueis_aluguel_id_seq'::regclass),
  "dataAluguel" date NOT NULL,
  "dataDevolucao" date NOT NULL,
  "preco" numeric(7,2) NOT NULL,
  "concluido" bool NOT NULL,
  "cliente_id" int8 NOT NULL
)
;

-- ----------------------------
-- Records of alugueis_aluguel
-- ----------------------------
INSERT INTO "public"."alugueis_aluguel" VALUES (2, '2021-04-26', '2021-04-28', 130.00, 'f', 1);
INSERT INTO "public"."alugueis_aluguel" VALUES (3, '2021-04-26', '2021-04-28', 130.00, 'f', 1);
INSERT INTO "public"."alugueis_aluguel" VALUES (4, '2021-04-26', '2021-04-28', 130.00, 'f', 1);
INSERT INTO "public"."alugueis_aluguel" VALUES (5, '2021-04-26', '2021-04-28', 130.00, 'f', 1);
INSERT INTO "public"."alugueis_aluguel" VALUES (1, '2021-04-26', '2021-04-28', 55.00, 't', 1);

-- ----------------------------
-- Table structure for alugueis_aluguel_filme
-- ----------------------------
DROP TABLE IF EXISTS "public"."alugueis_aluguel_filme";
CREATE TABLE "public"."alugueis_aluguel_filme" (
  "id" int8 NOT NULL DEFAULT nextval('alugueis_aluguel_filme_id_seq'::regclass),
  "aluguel_id" int8 NOT NULL,
  "filme_id" int8 NOT NULL
)
;

-- ----------------------------
-- Records of alugueis_aluguel_filme
-- ----------------------------
INSERT INTO "public"."alugueis_aluguel_filme" VALUES (2, 2, 1);
INSERT INTO "public"."alugueis_aluguel_filme" VALUES (3, 3, 1);
INSERT INTO "public"."alugueis_aluguel_filme" VALUES (4, 4, 1);
INSERT INTO "public"."alugueis_aluguel_filme" VALUES (5, 5, 1);
INSERT INTO "public"."alugueis_aluguel_filme" VALUES (6, 1, 2);

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_group";
CREATE TABLE "public"."auth_group" (
  "id" int4 NOT NULL DEFAULT nextval('auth_group_id_seq'::regclass),
  "name" varchar(150) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_group_permissions";
CREATE TABLE "public"."auth_group_permissions" (
  "id" int8 NOT NULL DEFAULT nextval('auth_group_permissions_id_seq'::regclass),
  "group_id" int4 NOT NULL,
  "permission_id" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_permission";
CREATE TABLE "public"."auth_permission" (
  "id" int4 NOT NULL DEFAULT nextval('auth_permission_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "content_type_id" int4 NOT NULL,
  "codename" varchar(100) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO "public"."auth_permission" VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO "public"."auth_permission" VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO "public"."auth_permission" VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO "public"."auth_permission" VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO "public"."auth_permission" VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO "public"."auth_permission" VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO "public"."auth_permission" VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO "public"."auth_permission" VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO "public"."auth_permission" VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO "public"."auth_permission" VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO "public"."auth_permission" VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO "public"."auth_permission" VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO "public"."auth_permission" VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO "public"."auth_permission" VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO "public"."auth_permission" VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO "public"."auth_permission" VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO "public"."auth_permission" VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO "public"."auth_permission" VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO "public"."auth_permission" VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO "public"."auth_permission" VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO "public"."auth_permission" VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO "public"."auth_permission" VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO "public"."auth_permission" VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO "public"."auth_permission" VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO "public"."auth_permission" VALUES (25, 'Can add cliente', 7, 'add_cliente');
INSERT INTO "public"."auth_permission" VALUES (26, 'Can change cliente', 7, 'change_cliente');
INSERT INTO "public"."auth_permission" VALUES (27, 'Can delete cliente', 7, 'delete_cliente');
INSERT INTO "public"."auth_permission" VALUES (28, 'Can view cliente', 7, 'view_cliente');
INSERT INTO "public"."auth_permission" VALUES (29, 'Can add filme', 8, 'add_filme');
INSERT INTO "public"."auth_permission" VALUES (30, 'Can change filme', 8, 'change_filme');
INSERT INTO "public"."auth_permission" VALUES (31, 'Can delete filme', 8, 'delete_filme');
INSERT INTO "public"."auth_permission" VALUES (32, 'Can view filme', 8, 'view_filme');
INSERT INTO "public"."auth_permission" VALUES (33, 'Can add endereco', 9, 'add_endereco');
INSERT INTO "public"."auth_permission" VALUES (34, 'Can change endereco', 9, 'change_endereco');
INSERT INTO "public"."auth_permission" VALUES (35, 'Can delete endereco', 9, 'delete_endereco');
INSERT INTO "public"."auth_permission" VALUES (36, 'Can view endereco', 9, 'view_endereco');
INSERT INTO "public"."auth_permission" VALUES (37, 'Can add aluguel', 10, 'add_aluguel');
INSERT INTO "public"."auth_permission" VALUES (38, 'Can change aluguel', 10, 'change_aluguel');
INSERT INTO "public"."auth_permission" VALUES (39, 'Can delete aluguel', 10, 'delete_aluguel');
INSERT INTO "public"."auth_permission" VALUES (40, 'Can view aluguel', 10, 'view_aluguel');
INSERT INTO "public"."auth_permission" VALUES (41, 'Can add Token', 11, 'add_token');
INSERT INTO "public"."auth_permission" VALUES (42, 'Can change Token', 11, 'change_token');
INSERT INTO "public"."auth_permission" VALUES (43, 'Can delete Token', 11, 'delete_token');
INSERT INTO "public"."auth_permission" VALUES (44, 'Can view Token', 11, 'view_token');
INSERT INTO "public"."auth_permission" VALUES (45, 'Can add token', 12, 'add_tokenproxy');
INSERT INTO "public"."auth_permission" VALUES (46, 'Can change token', 12, 'change_tokenproxy');
INSERT INTO "public"."auth_permission" VALUES (47, 'Can delete token', 12, 'delete_tokenproxy');
INSERT INTO "public"."auth_permission" VALUES (48, 'Can view token', 12, 'view_tokenproxy');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_user";
CREATE TABLE "public"."auth_user" (
  "id" int4 NOT NULL DEFAULT nextval('auth_user_id_seq'::regclass),
  "password" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "last_login" timestamptz(6),
  "is_superuser" bool NOT NULL,
  "username" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "first_name" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "last_name" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "email" varchar(254) COLLATE "pg_catalog"."default" NOT NULL,
  "is_staff" bool NOT NULL,
  "is_active" bool NOT NULL,
  "date_joined" timestamptz(6) NOT NULL
)
;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO "public"."auth_user" VALUES (2, 'pbkdf2_sha256$260000$C8edcASOCLwizTZRH7Lv3S$SGHuFhHDRUuIJM1I719qVYlkBScMa6rTXpq+jDP+8GY=', '2021-04-25 16:20:42.721255-03', 't', 'gutoTeste', '', '', '', 't', 't', '2021-04-25 16:02:07.975377-03');
INSERT INTO "public"."auth_user" VALUES (1, 'pbkdf2_sha256$260000$VsuEmchyAXpuAFpRtuf1R8$D9FiToFpe5ThqTHJOBY7ki33mpKYyhVdGq787qfLlQw=', '2021-04-25 17:50:56.582045-03', 't', 'guto', '', '', 'guttizin.dev@gmail.com', 't', 't', '2021-04-21 20:11:43.053596-03');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_user_groups";
CREATE TABLE "public"."auth_user_groups" (
  "id" int8 NOT NULL DEFAULT nextval('auth_user_groups_id_seq'::regclass),
  "user_id" int4 NOT NULL,
  "group_id" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_user_user_permissions";
CREATE TABLE "public"."auth_user_user_permissions" (
  "id" int8 NOT NULL DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass),
  "user_id" int4 NOT NULL,
  "permission_id" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for authtoken_token
-- ----------------------------
DROP TABLE IF EXISTS "public"."authtoken_token";
CREATE TABLE "public"."authtoken_token" (
  "key" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
  "created" timestamptz(6) NOT NULL,
  "user_id" int4 NOT NULL
)
;

-- ----------------------------
-- Records of authtoken_token
-- ----------------------------
INSERT INTO "public"."authtoken_token" VALUES ('af900db238e054d20f2c1d5ff5db24bd3418baba', '2021-04-25 15:42:04.435564-03', 1);
INSERT INTO "public"."authtoken_token" VALUES ('7a95d9224715e7c7fe2480cfc116d4ddc426f5c5', '2021-04-25 16:06:27.955222-03', 2);

-- ----------------------------
-- Table structure for clientes_cliente
-- ----------------------------
DROP TABLE IF EXISTS "public"."clientes_cliente";
CREATE TABLE "public"."clientes_cliente" (
  "id" int8 NOT NULL DEFAULT nextval('clientes_cliente_id_seq'::regclass),
  "nome" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
  "sobrenome" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "cpf" varchar(11) COLLATE "pg_catalog"."default" NOT NULL,
  "rg" varchar(9) COLLATE "pg_catalog"."default" NOT NULL,
  "dataNasc" date NOT NULL,
  "endereco_id" int8 NOT NULL,
  "email" varchar(60) COLLATE "pg_catalog"."default" NOT NULL,
  "telefone" varchar(15) COLLATE "pg_catalog"."default" NOT NULL,
  "dataCadastro" date NOT NULL
)
;

-- ----------------------------
-- Records of clientes_cliente
-- ----------------------------
INSERT INTO "public"."clientes_cliente" VALUES (1, 'Carlos', 'Um', '05478569522', '4585214', '1991-12-31', 1, 'gutivin.dev@gmail.com', '62999999999', '2021-04-26');
INSERT INTO "public"."clientes_cliente" VALUES (2, 'Guto', 'Um Dois', '05489754121', '6352148', '1991-12-31', 2, 'guttizin@gmail.com', '62999999999', '2021-04-26');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_admin_log";
CREATE TABLE "public"."django_admin_log" (
  "id" int4 NOT NULL DEFAULT nextval('django_admin_log_id_seq'::regclass),
  "action_time" timestamptz(6) NOT NULL,
  "object_id" text COLLATE "pg_catalog"."default",
  "object_repr" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "action_flag" int2 NOT NULL,
  "change_message" text COLLATE "pg_catalog"."default" NOT NULL,
  "content_type_id" int4,
  "user_id" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_content_type";
CREATE TABLE "public"."django_content_type" (
  "id" int4 NOT NULL DEFAULT nextval('django_content_type_id_seq'::regclass),
  "app_label" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "model" varchar(100) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO "public"."django_content_type" VALUES (1, 'admin', 'logentry');
INSERT INTO "public"."django_content_type" VALUES (2, 'auth', 'permission');
INSERT INTO "public"."django_content_type" VALUES (3, 'auth', 'group');
INSERT INTO "public"."django_content_type" VALUES (4, 'auth', 'user');
INSERT INTO "public"."django_content_type" VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO "public"."django_content_type" VALUES (6, 'sessions', 'session');
INSERT INTO "public"."django_content_type" VALUES (7, 'clientes', 'cliente');
INSERT INTO "public"."django_content_type" VALUES (8, 'filmes', 'filme');
INSERT INTO "public"."django_content_type" VALUES (9, 'enderecos', 'endereco');
INSERT INTO "public"."django_content_type" VALUES (10, 'alugueis', 'aluguel');
INSERT INTO "public"."django_content_type" VALUES (11, 'authtoken', 'token');
INSERT INTO "public"."django_content_type" VALUES (12, 'authtoken', 'tokenproxy');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_migrations";
CREATE TABLE "public"."django_migrations" (
  "id" int8 NOT NULL DEFAULT nextval('django_migrations_id_seq'::regclass),
  "app" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "applied" timestamptz(6) NOT NULL
)
;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO "public"."django_migrations" VALUES (1, 'contenttypes', '0001_initial', '2021-04-21 20:02:01.666359-03');
INSERT INTO "public"."django_migrations" VALUES (2, 'auth', '0001_initial', '2021-04-21 20:02:01.833339-03');
INSERT INTO "public"."django_migrations" VALUES (3, 'admin', '0001_initial', '2021-04-21 20:02:01.880313-03');
INSERT INTO "public"."django_migrations" VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2021-04-21 20:02:01.894303-03');
INSERT INTO "public"."django_migrations" VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2021-04-21 20:02:01.909297-03');
INSERT INTO "public"."django_migrations" VALUES (6, 'filmes', '0001_initial', '2021-04-21 20:02:01.929286-03');
INSERT INTO "public"."django_migrations" VALUES (7, 'clientes', '0001_initial', '2021-04-21 20:02:01.965263-03');
INSERT INTO "public"."django_migrations" VALUES (8, 'alugueis', '0001_initial', '2021-04-21 20:02:02.030205-03');
INSERT INTO "public"."django_migrations" VALUES (9, 'contenttypes', '0002_remove_content_type_name', '2021-04-21 20:02:02.067183-03');
INSERT INTO "public"."django_migrations" VALUES (10, 'auth', '0002_alter_permission_name_max_length', '2021-04-21 20:02:02.084173-03');
INSERT INTO "public"."django_migrations" VALUES (11, 'auth', '0003_alter_user_email_max_length', '2021-04-21 20:02:02.103162-03');
INSERT INTO "public"."django_migrations" VALUES (12, 'auth', '0004_alter_user_username_opts', '2021-04-21 20:02:02.119153-03');
INSERT INTO "public"."django_migrations" VALUES (13, 'auth', '0005_alter_user_last_login_null', '2021-04-21 20:02:02.138143-03');
INSERT INTO "public"."django_migrations" VALUES (14, 'auth', '0006_require_contenttypes_0002', '2021-04-21 20:02:02.146139-03');
INSERT INTO "public"."django_migrations" VALUES (15, 'auth', '0007_alter_validators_add_error_messages', '2021-04-21 20:02:02.162128-03');
INSERT INTO "public"."django_migrations" VALUES (16, 'auth', '0008_alter_user_username_max_length', '2021-04-21 20:02:02.187099-03');
INSERT INTO "public"."django_migrations" VALUES (17, 'auth', '0009_alter_user_last_name_max_length', '2021-04-21 20:02:02.205088-03');
INSERT INTO "public"."django_migrations" VALUES (18, 'auth', '0010_alter_group_name_max_length', '2021-04-21 20:02:02.228078-03');
INSERT INTO "public"."django_migrations" VALUES (19, 'auth', '0011_update_proxy_permissions', '2021-04-21 20:02:02.247065-03');
INSERT INTO "public"."django_migrations" VALUES (20, 'auth', '0012_alter_user_first_name_max_length', '2021-04-21 20:02:02.265055-03');
INSERT INTO "public"."django_migrations" VALUES (21, 'enderecos', '0001_initial', '2021-04-21 20:02:02.284043-03');
INSERT INTO "public"."django_migrations" VALUES (22, 'sessions', '0001_initial', '2021-04-21 20:02:02.314027-03');
INSERT INTO "public"."django_migrations" VALUES (23, 'clientes', '0002_alter_cliente_endereco', '2021-04-21 20:05:26.29308-03');
INSERT INTO "public"."django_migrations" VALUES (24, 'authtoken', '0001_initial', '2021-04-25 15:41:09.725341-03');
INSERT INTO "public"."django_migrations" VALUES (25, 'authtoken', '0002_auto_20160226_1747', '2021-04-25 15:41:09.775769-03');
INSERT INTO "public"."django_migrations" VALUES (26, 'authtoken', '0003_tokenproxy', '2021-04-25 15:41:09.785784-03');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_session";
CREATE TABLE "public"."django_session" (
  "session_key" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
  "session_data" text COLLATE "pg_catalog"."default" NOT NULL,
  "expire_date" timestamptz(6) NOT NULL
)
;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO "public"."django_session" VALUES ('kwjzy7qbj8jlxldy9qz3bmph2ekpku68', '.eJxVjEEOwiAQRe_C2hAGSwGX7nsGwjCDVA1NSrsy3l1JutDtf-_9lwhx30rYG69hJnERIE6_G8b04NoB3WO9LTItdVtnlF2RB21yWoif18P9OyixlW9tFWdCB6AcOU_kOY-kQSlPOWFEBIPauIH0qDhh0tki-I4Ga7I9i_cHBpA47Q:1lZMvP:1FjhkBqtoSwV50f4-CQhXqGNlKD5-sH8sa4TXOlLz74', '2021-05-05 21:10:31.489783-03');
INSERT INTO "public"."django_session" VALUES ('u3x35zrybwglr2mu13tzs9076qi7y2oa', '.eJxVjEEOwiAQRe_C2hAGSwGX7nsGwjCDVA1NSrsy3l1JutDtf-_9lwhx30rYG69hJnERIE6_G8b04NoB3WO9LTItdVtnlF2RB21yWoif18P9OyixlW9tFWdCB6AcOU_kOY-kQSlPOWFEBIPauIH0qDhh0tki-I4Ga7I9i_cHBpA47Q:1lak1Y:t95Yg9COiI16oFISVHxGLk-K_HeZfz5wrzvDdaCzzWM', '2021-05-09 16:02:32.782166-03');
INSERT INTO "public"."django_session" VALUES ('51xhfvb4q8ofxh9oromtojnbbug18a7i', '.eJxVjEEOwiAQRe_C2hAGSwGX7nsGwjCDVA1NSrsy3l1JutDtf-_9lwhx30rYG69hJnERIE6_G8b04NoB3WO9LTItdVtnlF2RB21yWoif18P9OyixlW9tFWdCB6AcOU_kOY-kQSlPOWFEBIPauIH0qDhh0tki-I4Ga7I9i_cHBpA47Q:1laliS:BTIqKUY3U_HIcrQENQpaWrGnZUvChq5ZdK2IhOADebk', '2021-05-09 17:50:56.58606-03');

-- ----------------------------
-- Table structure for enderecos_endereco
-- ----------------------------
DROP TABLE IF EXISTS "public"."enderecos_endereco";
CREATE TABLE "public"."enderecos_endereco" (
  "id" int8 NOT NULL DEFAULT nextval('enderecos_endereco_id_seq'::regclass),
  "logradouro" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "numero" int4 NOT NULL,
  "bairro" varchar(60) COLLATE "pg_catalog"."default" NOT NULL,
  "complemento" varchar(60) COLLATE "pg_catalog"."default" NOT NULL,
  "cidade" varchar(60) COLLATE "pg_catalog"."default" NOT NULL,
  "cep" varchar(9) COLLATE "pg_catalog"."default" NOT NULL,
  "estado" varchar(2) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of enderecos_endereco
-- ----------------------------
INSERT INTO "public"."enderecos_endereco" VALUES (1, 'Avenida Um', 1, 'Condomínio Um', '', 'Goiânia', '74000000', 'GO');
INSERT INTO "public"."enderecos_endereco" VALUES (2, 'Avenida Dois', 110, 'Bairro um', 'Condominio Vertical, Apartamento 12', 'Goiânia', '74000000', 'GO');

-- ----------------------------
-- Table structure for filmes_filme
-- ----------------------------
DROP TABLE IF EXISTS "public"."filmes_filme";
CREATE TABLE "public"."filmes_filme" (
  "id" int8 NOT NULL DEFAULT nextval('filmes_filme_id_seq'::regclass),
  "nome" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
  "resumo" text COLLATE "pg_catalog"."default" NOT NULL,
  "anoLancamento" int4 NOT NULL,
  "duracao" int4 NOT NULL,
  "genero" varchar(15) COLLATE "pg_catalog"."default" NOT NULL,
  "preco" numeric(7,2) NOT NULL,
  "disponivel" bool NOT NULL
)
;

-- ----------------------------
-- Records of filmes_filme
-- ----------------------------
INSERT INTO "public"."filmes_filme" VALUES (5, 'Homem-Aranha 2', 'Resumo Homem-Aranha 2....', 2020, 200, 'Super-heróis', 20.00, 'f');
INSERT INTO "public"."filmes_filme" VALUES (2, 'Homem-Aranha de Volta ao Lar', 'Peter Parker está tentando voltar à sua rotina de estudante, mas a chegada do vilão Abutre põe o herói à prova.', 2017, 133, 'Super-heróis', 55.00, 'f');
INSERT INTO "public"."filmes_filme" VALUES (1, '(UPDATE2)O Diabo de Cada Dia', 'Em um lugar tomado por corrupção e violência, um jovem enfrenta figuras sinistras para proteger quem mais ama.', 2020, 138, 'Drama', 9.90, 't');
INSERT INTO "public"."filmes_filme" VALUES (3, 'Batman: O cavaleiro das Trevas', 'Batman, tenente Gordon e o promotor público continuam a desmantelar o submundo do crime de Gotham, mas um novo vilão ameaça destruir o trabalho deles.', 2008, 152, 'Super-heróis', 302.00, 't');
INSERT INTO "public"."filmes_filme" VALUES (4, 'Senhor dos Aneis', 'Resumo Senhor dos aneis....', 2020, 200, 'Mistico', 99999.99, 't');

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."alugueis_aluguel_filme_id_seq"
OWNED BY "public"."alugueis_aluguel_filme"."id";
SELECT setval('"public"."alugueis_aluguel_filme_id_seq"', 7, true);
ALTER SEQUENCE "public"."alugueis_aluguel_id_seq"
OWNED BY "public"."alugueis_aluguel"."id";
SELECT setval('"public"."alugueis_aluguel_id_seq"', 6, true);
ALTER SEQUENCE "public"."auth_group_id_seq"
OWNED BY "public"."auth_group"."id";
SELECT setval('"public"."auth_group_id_seq"', 2, false);
ALTER SEQUENCE "public"."auth_group_permissions_id_seq"
OWNED BY "public"."auth_group_permissions"."id";
SELECT setval('"public"."auth_group_permissions_id_seq"', 2, false);
ALTER SEQUENCE "public"."auth_permission_id_seq"
OWNED BY "public"."auth_permission"."id";
SELECT setval('"public"."auth_permission_id_seq"', 49, true);
ALTER SEQUENCE "public"."auth_user_groups_id_seq"
OWNED BY "public"."auth_user_groups"."id";
SELECT setval('"public"."auth_user_groups_id_seq"', 2, false);
ALTER SEQUENCE "public"."auth_user_id_seq"
OWNED BY "public"."auth_user"."id";
SELECT setval('"public"."auth_user_id_seq"', 3, true);
ALTER SEQUENCE "public"."auth_user_user_permissions_id_seq"
OWNED BY "public"."auth_user_user_permissions"."id";
SELECT setval('"public"."auth_user_user_permissions_id_seq"', 2, false);
ALTER SEQUENCE "public"."clientes_cliente_id_seq"
OWNED BY "public"."clientes_cliente"."id";
SELECT setval('"public"."clientes_cliente_id_seq"', 3, true);
ALTER SEQUENCE "public"."django_admin_log_id_seq"
OWNED BY "public"."django_admin_log"."id";
SELECT setval('"public"."django_admin_log_id_seq"', 2, false);
ALTER SEQUENCE "public"."django_content_type_id_seq"
OWNED BY "public"."django_content_type"."id";
SELECT setval('"public"."django_content_type_id_seq"', 13, true);
ALTER SEQUENCE "public"."django_migrations_id_seq"
OWNED BY "public"."django_migrations"."id";
SELECT setval('"public"."django_migrations_id_seq"', 27, true);
ALTER SEQUENCE "public"."enderecos_endereco_id_seq"
OWNED BY "public"."enderecos_endereco"."id";
SELECT setval('"public"."enderecos_endereco_id_seq"', 5, true);
ALTER SEQUENCE "public"."filmes_filme_id_seq"
OWNED BY "public"."filmes_filme"."id";
SELECT setval('"public"."filmes_filme_id_seq"', 9, true);

-- ----------------------------
-- Indexes structure for table alugueis_aluguel
-- ----------------------------
CREATE INDEX "alugueis_aluguel_cliente_id_ae998723" ON "public"."alugueis_aluguel" USING btree (
  "cliente_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table alugueis_aluguel
-- ----------------------------
ALTER TABLE "public"."alugueis_aluguel" ADD CONSTRAINT "alugueis_aluguel_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table alugueis_aluguel_filme
-- ----------------------------
CREATE INDEX "alugueis_aluguel_filme_aluguel_id_7988cd69" ON "public"."alugueis_aluguel_filme" USING btree (
  "aluguel_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "alugueis_aluguel_filme_filme_id_3b694351" ON "public"."alugueis_aluguel_filme" USING btree (
  "filme_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table alugueis_aluguel_filme
-- ----------------------------
ALTER TABLE "public"."alugueis_aluguel_filme" ADD CONSTRAINT "alugueis_aluguel_filme_aluguel_id_filme_id_c4b68bc3_uniq" UNIQUE ("aluguel_id", "filme_id");

-- ----------------------------
-- Primary Key structure for table alugueis_aluguel_filme
-- ----------------------------
ALTER TABLE "public"."alugueis_aluguel_filme" ADD CONSTRAINT "alugueis_aluguel_filme_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_group
-- ----------------------------
CREATE INDEX "auth_group_name_a6ea08ec_like" ON "public"."auth_group" USING btree (
  "name" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table auth_group
-- ----------------------------
ALTER TABLE "public"."auth_group" ADD CONSTRAINT "auth_group_name_key" UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table auth_group
-- ----------------------------
ALTER TABLE "public"."auth_group" ADD CONSTRAINT "auth_group_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_group_permissions
-- ----------------------------
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "public"."auth_group_permissions" USING btree (
  "group_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "public"."auth_group_permissions" USING btree (
  "permission_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table auth_group_permissions
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD CONSTRAINT "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" UNIQUE ("group_id", "permission_id");

-- ----------------------------
-- Primary Key structure for table auth_group_permissions
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD CONSTRAINT "auth_group_permissions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_permission
-- ----------------------------
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "public"."auth_permission" USING btree (
  "content_type_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table auth_permission
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD CONSTRAINT "auth_permission_content_type_id_codename_01ab375a_uniq" UNIQUE ("content_type_id", "codename");

-- ----------------------------
-- Primary Key structure for table auth_permission
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD CONSTRAINT "auth_permission_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_user
-- ----------------------------
CREATE INDEX "auth_user_username_6821ab7c_like" ON "public"."auth_user" USING btree (
  "username" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table auth_user
-- ----------------------------
ALTER TABLE "public"."auth_user" ADD CONSTRAINT "auth_user_username_key" UNIQUE ("username");

-- ----------------------------
-- Primary Key structure for table auth_user
-- ----------------------------
ALTER TABLE "public"."auth_user" ADD CONSTRAINT "auth_user_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_user_groups
-- ----------------------------
CREATE INDEX "auth_user_groups_group_id_97559544" ON "public"."auth_user_groups" USING btree (
  "group_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "auth_user_groups_user_id_6a12ed8b" ON "public"."auth_user_groups" USING btree (
  "user_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table auth_user_groups
-- ----------------------------
ALTER TABLE "public"."auth_user_groups" ADD CONSTRAINT "auth_user_groups_user_id_group_id_94350c0c_uniq" UNIQUE ("user_id", "group_id");

-- ----------------------------
-- Primary Key structure for table auth_user_groups
-- ----------------------------
ALTER TABLE "public"."auth_user_groups" ADD CONSTRAINT "auth_user_groups_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_user_user_permissions
-- ----------------------------
CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c" ON "public"."auth_user_user_permissions" USING btree (
  "permission_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b" ON "public"."auth_user_user_permissions" USING btree (
  "user_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table auth_user_user_permissions
-- ----------------------------
ALTER TABLE "public"."auth_user_user_permissions" ADD CONSTRAINT "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" UNIQUE ("user_id", "permission_id");

-- ----------------------------
-- Primary Key structure for table auth_user_user_permissions
-- ----------------------------
ALTER TABLE "public"."auth_user_user_permissions" ADD CONSTRAINT "auth_user_user_permissions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table authtoken_token
-- ----------------------------
CREATE INDEX "authtoken_token_key_10f0b77e_like" ON "public"."authtoken_token" USING btree (
  "key" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table authtoken_token
-- ----------------------------
ALTER TABLE "public"."authtoken_token" ADD CONSTRAINT "authtoken_token_user_id_key" UNIQUE ("user_id");

-- ----------------------------
-- Primary Key structure for table authtoken_token
-- ----------------------------
ALTER TABLE "public"."authtoken_token" ADD CONSTRAINT "authtoken_token_pkey" PRIMARY KEY ("key");

-- ----------------------------
-- Indexes structure for table clientes_cliente
-- ----------------------------
CREATE INDEX "clientes_cliente_cpf_7ee8eeb9_like" ON "public"."clientes_cliente" USING btree (
  "cpf" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);
CREATE INDEX "clientes_cliente_email_6ec9cd8a_like" ON "public"."clientes_cliente" USING btree (
  "email" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);
CREATE INDEX "clientes_cliente_endereco_id_c2fa75ba" ON "public"."clientes_cliente" USING btree (
  "endereco_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "clientes_cliente_rg_ac32833f_like" ON "public"."clientes_cliente" USING btree (
  "rg" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table clientes_cliente
-- ----------------------------
ALTER TABLE "public"."clientes_cliente" ADD CONSTRAINT "clientes_cliente_cpf_key" UNIQUE ("cpf");
ALTER TABLE "public"."clientes_cliente" ADD CONSTRAINT "clientes_cliente_rg_key" UNIQUE ("rg");
ALTER TABLE "public"."clientes_cliente" ADD CONSTRAINT "clientes_cliente_email_key" UNIQUE ("email");

-- ----------------------------
-- Primary Key structure for table clientes_cliente
-- ----------------------------
ALTER TABLE "public"."clientes_cliente" ADD CONSTRAINT "clientes_cliente_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table django_admin_log
-- ----------------------------
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "public"."django_admin_log" USING btree (
  "content_type_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "public"."django_admin_log" USING btree (
  "user_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Checks structure for table django_admin_log
-- ----------------------------
ALTER TABLE "public"."django_admin_log" ADD CONSTRAINT "django_admin_log_action_flag_check" CHECK (action_flag >= 0);

-- ----------------------------
-- Primary Key structure for table django_admin_log
-- ----------------------------
ALTER TABLE "public"."django_admin_log" ADD CONSTRAINT "django_admin_log_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table django_content_type
-- ----------------------------
ALTER TABLE "public"."django_content_type" ADD CONSTRAINT "django_content_type_app_label_model_76bd3d3b_uniq" UNIQUE ("app_label", "model");

-- ----------------------------
-- Primary Key structure for table django_content_type
-- ----------------------------
ALTER TABLE "public"."django_content_type" ADD CONSTRAINT "django_content_type_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table django_migrations
-- ----------------------------
ALTER TABLE "public"."django_migrations" ADD CONSTRAINT "django_migrations_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table django_session
-- ----------------------------
CREATE INDEX "django_session_expire_date_a5c62663" ON "public"."django_session" USING btree (
  "expire_date" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);
CREATE INDEX "django_session_session_key_c0390e0f_like" ON "public"."django_session" USING btree (
  "session_key" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table django_session
-- ----------------------------
ALTER TABLE "public"."django_session" ADD CONSTRAINT "django_session_pkey" PRIMARY KEY ("session_key");

-- ----------------------------
-- Primary Key structure for table enderecos_endereco
-- ----------------------------
ALTER TABLE "public"."enderecos_endereco" ADD CONSTRAINT "enderecos_endereco_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table filmes_filme
-- ----------------------------
ALTER TABLE "public"."filmes_filme" ADD CONSTRAINT "filmes_filme_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table alugueis_aluguel
-- ----------------------------
ALTER TABLE "public"."alugueis_aluguel" ADD CONSTRAINT "alugueis_aluguel_cliente_id_ae998723_fk_clientes_cliente_id" FOREIGN KEY ("cliente_id") REFERENCES "public"."clientes_cliente" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table alugueis_aluguel_filme
-- ----------------------------
ALTER TABLE "public"."alugueis_aluguel_filme" ADD CONSTRAINT "alugueis_aluguel_fil_aluguel_id_7988cd69_fk_alugueis_" FOREIGN KEY ("aluguel_id") REFERENCES "public"."alugueis_aluguel" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."alugueis_aluguel_filme" ADD CONSTRAINT "alugueis_aluguel_filme_filme_id_3b694351_fk_filmes_filme_id" FOREIGN KEY ("filme_id") REFERENCES "public"."filmes_filme" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table auth_group_permissions
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD CONSTRAINT "auth_group_permissio_permission_id_84c5c92e_fk_auth_perm" FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."auth_group_permissions" ADD CONSTRAINT "auth_group_permissions_group_id_b120cbf9_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "public"."auth_group" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table auth_permission
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD CONSTRAINT "auth_permission_content_type_id_2f476e4b_fk_django_co" FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table auth_user_groups
-- ----------------------------
ALTER TABLE "public"."auth_user_groups" ADD CONSTRAINT "auth_user_groups_group_id_97559544_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "public"."auth_group" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."auth_user_groups" ADD CONSTRAINT "auth_user_groups_user_id_6a12ed8b_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table auth_user_user_permissions
-- ----------------------------
ALTER TABLE "public"."auth_user_user_permissions" ADD CONSTRAINT "auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm" FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."auth_user_user_permissions" ADD CONSTRAINT "auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table authtoken_token
-- ----------------------------
ALTER TABLE "public"."authtoken_token" ADD CONSTRAINT "authtoken_token_user_id_35299eff_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table clientes_cliente
-- ----------------------------
ALTER TABLE "public"."clientes_cliente" ADD CONSTRAINT "clientes_cliente_endereco_id_c2fa75ba_fk_enderecos_endereco_id" FOREIGN KEY ("endereco_id") REFERENCES "public"."enderecos_endereco" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table django_admin_log
-- ----------------------------
ALTER TABLE "public"."django_admin_log" ADD CONSTRAINT "django_admin_log_content_type_id_c4bce8eb_fk_django_co" FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."django_admin_log" ADD CONSTRAINT "django_admin_log_user_id_c564eba6_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
