-- sqlfluff:dialect:postgres

-- User account table
CREATE TABLE user_account (
    user_account_id SERIAL PRIMARY KEY,
    username        VARCHAR(50) NOT NULL UNIQUE,
    email           VARCHAR(100) UNIQUE NOT NULL,
    created_at      TIMESTAMP DEFAULT NOW()
);

-- User profile table
CREATE TABLE user_profile (
    user_profile_id SERIAL PRIMARY KEY,
    user_account_id INT NOT NULL REFERENCES user_account(user_account_id),
    tenant_id  INT NOT NULL,
    created_at      TIMESTAMP DEFAULT NOW(),
    active          BOOLEAN DEFAULT TRUE,
    register_data   JSONB
);

-- Example data
INSERT INTO user_account (username, email)
VALUES
    ('alice', 'alice@example.com'),
    ('bob', 'bob@example.com'),
    ('carol', 'carol@example.com');

INSERT INTO user_profile (user_account_id, app_id, register_data)
VALUES
    (1, 1, '{"source":"web"}'),
    (2, 2, '{"source":"mobile"}'),
    (3, 3, '{"source":"web"}');

