-- +goose Up
-- +goose StatementBegin
create table users (
  name varchar(40) not null
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
drop table users;
-- +goose StatementEnd
