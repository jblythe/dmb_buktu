CREATE SCHEMA membership_app IF NOT EXISTS;

CREATE TABLE user (

id VARCHAR(36),
first_name VARCHAR(255),
last_name VARCHAR(255),
business_name VARCHAR(max)

);

CREATE TABLE hub (

id VARCHAR(36),
name VARCHAR(max),
location VARCHAR(max),
type VARCHAR(),
event_types ARRAY, -- is this a list of the possible event types at the hub
contact_first_name VARCHAR(255),
contact_last_name VARCHAR(255),
contact_email VARCHAR(255),
contact_phone VARCHAR(20)

);

CREATE TABLE checkin (

id VARCHAR(36),
hub_id VARCHAR(36),
user_id VARCHAR(36),
checkin_date TIMESTAMP

);

CREATE TABLE events (

id VARCHAR(36),
event_id VARCHAR(36),
user_id VARCHAR(36),
event_date TIMESTAMP

);
