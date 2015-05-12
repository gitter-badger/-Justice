
CREATE TABLE sensor (
  id SERIAL PRIMARY KEY,
  username TEXT NOT NULL,
  time_in timestamp NOT NULL,
  time_out timestamp NOT NULL
);

CREATE TABLE user_data (
  id_user INTEGER PRIMARY KEY NOT NULL,
  full_name TEXT NOT NULL,
  bill TEXT NOT NULL,
  rate_per_hour DOUBLE PRECISION
);

CREATE TABLE user_roles (
  user_role_id SERIAL PRIMARY KEY,
  username TEXT NOT NULL,
  role TEXT NOT NULL,
  FOREIGN KEY (username) REFERENCES users (username)
);

CREATE TABLE users (
  username TEXT PRIMARY KEY NOT NULL,
  password TEXT NOT NULL,
  enabled INTEGER NOT NULL DEFAULT 1,
  status CHARACTER(20) NOT NULL
);

DROP TABLE sensor;