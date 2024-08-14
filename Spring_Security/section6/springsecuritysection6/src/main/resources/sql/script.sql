create table users(username varchar(50) not null primary key,password varchar(500) not null,enabled boolean not null);
create table authorities (username varchar(50) not null,authority varchar(50) not null,constraint fk_authorities_users foreign key(username) references users(username));
create unique index ix_auth_username on authorities (username,authority);

INSERT INTO users (username, password, enabled)
VALUES ('user', '{noop}EazyBytes@12345', '1');
INSERT INTO authorities (username, authority)
VALUES ('user', 'read');

INSERT INTO users (username, password, enabled)
VALUES ('admin', '{bcrypt}$2a$10$cVwZ9p9MslqLyNb/G2m7zejT/dkcM1O3OkRZuUROGu.a6lkxOCQOq', '1');
INSERT INTO authorities (username, authority)
VALUES ('admin', 'admin');
