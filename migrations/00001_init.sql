-- +goose Up
-- +goose StatementBegin
create table if not exists users (
	id       serial        primary key,
	username varchar (50)  unique not null,
	password varchar (50)  not null,
	email    varchar (255) unique not null
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
drop table users;
-- +goose StatementEnd
