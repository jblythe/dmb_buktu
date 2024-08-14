CREATE SCHEMA IF NOT EXISTS buktu;

CREATE TABLE buktu.user (

id VARCHAR(36),
first_name VARCHAR(255),
last_name VARCHAR(255),
business_name VARCHAR(255),
email_address VARCHAR(255),
password VARCHAR(255),
phone_number VARCHAR(255)

);

CREATE TABLE buktu.hub (

id VARCHAR(36),
name VARCHAR(255),
location VARCHAR(255),
type VARCHAR(255),
event_types text[], -- is this a list of the possible event types at the hub
contact_first_name VARCHAR(255),
contact_last_name VARCHAR(255),
contact_email VARCHAR(255),
contact_phone VARCHAR(20)

);

CREATE TABLE buktu.hub_type
(

id       VARCHAR(36),
name     VARCHAR(255),
description VARCHAR(255)

);

CREATE TABLE buktu.checkin (

id VARCHAR(36),
hub_id VARCHAR(36),
user_id VARCHAR(36),
checkin_date TIMESTAMP

);

CREATE TABLE buktu.events (

id VARCHAR(36),
event_id VARCHAR(36),
user_id VARCHAR(36),
event_date TIMESTAMP

);

create table buktu.industries (
	seq_number int,
	naics_us_code int,
	naics_us_title varchar(255)
);

create table buktu.user_business (
	business_id varchar(36),
	user_id varchar(36),
	business_type varchar(255),
	business_name varchar(255),
	industry_code int,
	founding_date timestamp,
	website_url varchar(255)
);