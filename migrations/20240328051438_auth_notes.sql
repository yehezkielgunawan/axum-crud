-- Add migration script here
DROP TABLE IF EXISTS notes;
DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users (
  id serial PRIMARY KEY,
  email TEXT NOT NULL,
  password TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS notes (
  id serial PRIMARY KEY,
  ig_username TEXT NOT NULL,
  cosplay_character TEXT,
  user_id INTEGER,
  FOREIGN KEY (user_id) REFERENCES users (id)
);