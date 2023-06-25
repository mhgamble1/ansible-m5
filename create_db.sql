-- create user "image_gallery" with password 'spacer55';
CREATE USER image_gallery WITH PASSWORD 'spacer55';
GRANT image_gallery TO postgres;
CREATE DATABASE image_gallery OWNER image_gallery;
SET DATABASE image_gallery;
CREATE TABLE users (
  username VARCHAR(100) NOT NULL,
  password VARCHAR(100),
  full_name VARCHAR(200)
);

GRANT SELECT, INSERT, UPDATE, DELETE ON users TO image_gallery;

-- Grant privileges on existing sequences
GRANT USAGE ON ALL SEQUENCES IN SCHEMA public TO image_gallery;

-- Grant privileges on future sequences
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT USAGE ON SEQUENCES TO image_gallery;
