DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users (
  user_id SERIAL PRIMARY KEY,
  firstname VARCHAR(255) NOT NULL,
  lastname VARCHAR(255) NOT NULL,
  email VARCHAR(100) UNIQUE,
  password VARCHAR(100) NOT NULL
);

DROP TABLE IF EXISTS schedules ( 
  user_id INTEGER NOT NULL,
  day INTEGER NOT NULL,
  start_at TIME(HH:MI) NOT NULL,
  end_at TIME(HH:MI) NOT NULL
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