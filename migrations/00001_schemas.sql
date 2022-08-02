-- +goose Up
-- +goose StatementBegin
create schema users;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
drop schema users CASCADE;
-- +goose StatementEnd
