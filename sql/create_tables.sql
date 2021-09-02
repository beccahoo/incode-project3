DROP TABLE IF EXISTS posts;

CREATE TABLE IF NOT EXISTS posts (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  post VARCHAR(4000) NOT NULL
);

-- CREATE TABLE IF NOT EXISTS test_posts(
--     uniqueKeyId SERIAL PRIMARY KEY,
--     username VARCHAR(255) NOT NULL,
--     dayOfTheWeek NUMERIC(1,7) NOT NULL,
--     starTime TIME(HH:MI) NOT NULL,
--     endTime TIME(HH:MI) NOT NULL,
--     password VARCHAR(100) NOT NULL
-- );

-- /*when do we write UNIQUE*/