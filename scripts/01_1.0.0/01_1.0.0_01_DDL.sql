CREATE SCHEMA mailer;

CREATE TABLE mailer.mail_account(
	id BIGSERIAL PRIMARY KEY,
	server VARCHAR(200) NOT NULL,
    port INTEGER NOT NULL,
    address VARCHAR(200) NOT NULL,
    password VARCHAR(2000) NOT NULL,
    enabled BOOLEAN NOT NULL
);