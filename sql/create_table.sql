DROP TABLE IF EXISTS schedules;

CREATE TABLE IF NOT EXISTS schedules ( 
  id SERIAL PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  day SMALLINT CHECK (day BETWEEN 1 AND 7) NOT NULL,
  start_at TIME NOT NULL,
  end_at TIME NOT NULL
  
);


-- CREATE TABLE IF NOT EXISTS users (
--   user_id SERIAL PRIMARY KEY,
--   firstname VARCHAR(255) NOT NULL,
--   lastname VARCHAR(255) NOT NULL,
--   email VARCHAR(100) UNIQUE,
--   password VARCHAR(100) NOT NULL
-- );

-- CREATE TABLE IF NOT EXISTS test_posts(
--     uniqueKeyId SERIAL PRIMARY KEY,
--     username VARCHAR(255) NOT NULL,
--     dayOfTheWeek NUMERIC(1,7) NOT NULL,
--     starTime TIME(HH:MI) NOT NULL,
--     endTime TIME(HH:MI) NOT NULL,
--     password VARCHAR(100) NOT NULL
-- );

