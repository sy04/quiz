-- CREATE TABLE roles (
--     id BINARY(40) PRIMARY KEY DEFAULT (UUID_TO_BIN(UUID())),
--     name VARCHAR(255) NOT NULL,
--     created_at TIMESTAMP DEFAULT NULL,
--     updated_at TIMESTAMP DEFAULT NULL,
--     deleted_at TIMESTAMP DEFAULT NULL
-- );

-- CREATE TABLE users (
--     id BINARY PRIMARY KEY DEFAULT (UUID_TO_BIN(UUID())),
--     name VARCHAR(255) NOT NULL,
--     username VARCHAR(100) NOT NULL,
--     password VARCHAR(100) NOT NULL,
--     role_id BINARY(40),
--     FOREIGN KEY (role_id) REFERENCES roles(id),
--     created_at TIMESTAMP DEFAULT NULL,
--     updated_at TIMESTAMP DEFAULT NULL,
--     deleted_at TIMESTAMP DEFAULT NULL
-- );

-- CREATE TABLE subjects (
--     id BINARY(40) PRIMARY KEY DEFAULT (UUID_TO_BIN(UUID())),
--     name VARCHAR(255) NOT NULL,
--     content TEXT NOT NULL,
--     created_at TIMESTAMP DEFAULT NULL,
--     updated_at TIMESTAMP DEFAULT NULL,
--     deleted_at TIMESTAMP DEFAULT NULL
-- );

-- CREATE TABLE quizzes (
--     id BINARY(40) PRIMARY KEY DEFAULT (UUID_TO_BIN(UUID())),
--     name VARCHAR(255) NOT NULL,
--     subject_id BINARY(40),
--     FOREIGN KEY (subject_id) REFERENCES subjects(id),
--     created_at TIMESTAMP DEFAULT NULL,
--     updated_at TIMESTAMP DEFAULT NULL,
--     deleted_at TIMESTAMP DEFAULT NULL
-- );

-- CREATE TABLE quetions (
--     id BINARY(40) PRIMARY KEY DEFAULT (UUID_TO_BIN(UUID())),
--     name VARCHAR(255) NOT NULL,
--     discuss TEXT DEFAULT NULL,
--     quiz_id BINARY(40),
--     FOREIGN KEY (quiz_id) REFERENCES quizzes(id),
--     created_at TIMESTAMP DEFAULT NULL,
--     updated_at TIMESTAMP DEFAULT NULL,
--     deleted_at TIMESTAMP DEFAULT NULL
-- );

-- CREATE TABLE options (
--     id BINARY(40) PRIMARY KEY DEFAULT (UUID_TO_BIN(UUID())),
--     name VARCHAR(255) NOT NULL,
--     is_correct BOOLEAN NOT NULL DEFAULT FALSE,
--     quetion_id BINARY(40),
--     FOREIGN KEY (quetion_id) REFERENCES quetions(id),
--     created_at TIMESTAMP DEFAULT NULL,
--     updated_at TIMESTAMP DEFAULT NULL,
--     deleted_at TIMESTAMP DEFAULT NULL
-- );

-- CREATE TABLE answers (
--     id BINARY(40) PRIMARY KEY DEFAULT (UUID_TO_BIN(UUID())),
--     quetions TEXT NOT NULL,
--     point DOUBLE NOT NULL,
--     quiz_id BINARY(40),
--     FOREIGN KEY (quiz_id) REFERENCES quizzes(id),
--     user_id BINARY(40),
--     FOREIGN KEY (user_id) REFERENCES users(id),
--     created_at TIMESTAMP DEFAULT NULL,
--     updated_at TIMESTAMP DEFAULT NULL,
--     deleted_at TIMESTAMP DEFAULT NULL
-- );