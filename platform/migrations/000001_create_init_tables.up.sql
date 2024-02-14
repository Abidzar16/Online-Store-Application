-- ./platform/migrations/000001_create_init_tables.up.sql

-- Add UUID extension
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Set timezone
-- For more information, please visit:
-- https://en.wikipedia.org/wiki/List_of_tz_database_time_zones
SET TIMEZONE="Asia/Jakarta";

-- Create customers table
CREATE TABLE customers (
    id UUID DEFAULT uuid_generate_v4 () PRIMARY KEY,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW (),
    updated_at TIMESTAMP NULL,
    username VARCHAR (255) NOT NULL,
    password VARCHAR (255) NOT NULL
);

-- Add indexes
CREATE INDEX user_id ON customers (id);