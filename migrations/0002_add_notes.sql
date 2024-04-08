-- Add migration script here
DROP TABLE IF EXISTS notes;

CREATE TABLE IF NOT EXISTS notes (
  id serial PRIMARY KEY,
  ig_username TEXT NOT NULL,
  cosplay_character TEXT
);