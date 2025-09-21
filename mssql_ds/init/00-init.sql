-- MSSQL script

CREATE TABLE todo_item (
    todo_id INT IDENTITY(1,1) PRIMARY KEY,
    user_account_id INT NOT NULL,
    user_profile_id INT NOT NULL,
    title NVARCHAR(200) NOT NULL,
    is_done BIT DEFAULT 0,
    created_at DATETIME2 DEFAULT SYSUTCDATETIME()
);

-- Example data linking to Postgres IDs
INSERT INTO todo_item (user_account_id, user_profile_id, title, is_done)
VALUES
    (1, 1, 'Buy groceries', 0),
    (1, 1, 'Finish project report', 1),
    (2, 2, 'Plan holiday trip', 0),
    (3, 3, 'Pay electricity bill', 0),
    (3, 3, 'Read a book', 1);

