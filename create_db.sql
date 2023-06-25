-- create user "image_gallery" with password 'spacer55';
CREATE USER image_gallery WITH PASSWORD 'spacer55';
GRANT image_gallery TO postgres;
CREATE DATABASE image_gallery OWNER image_gallery;
\c image_gallery
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username VARCHAR(50) NOT NULL,
  password VARCHAR(50) NOT NULL
);
