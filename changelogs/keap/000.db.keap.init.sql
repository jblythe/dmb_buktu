CREATE SCHEMA IF NOT EXISTS keap;

CREATE TABLE keap.opportunities

(
    id INTEGER,
    opportunity_title TEXT,
    next_action_date TIMESTAMP,
    next_action_notes TEXT,
    opportunity_notes TEXT,
    estimated_close_date TIMESTAMP,
    include_in_forecast BOOLEAN,
    projected_revenue_low DECIMAL(15,2),
    projected_revenue_high DECIMAL(15,2),
    contact json,
    stage json,
    keap_user json,
    date_created TIMESTAMP,
    last_updated TIMESTAMP,
    affiliate_id INTEGER,
    custom_fields json
);

CREATE TABLE keap.contact

(
    tag_ids INTEGER[],
    id INTEGER,
    company json,
    email_opted_in BOOLEAN,
    email_status VARCHAR(255),
    date_created TIMESTAMP,
    last_updated TIMESTAMP,
    score_value INTEGER,
    last_updated_utc_millis BIGINT,
    email_addresses json,
    addresses json,
    phone_numbers json,
    given_name VARCHAR(255),
    family_name VARCHAR(255),
    middle_name VARCHAR(25),
    owner_id INTEGER,
    custom_fields json,
    company_name VARCHAR(255)
);

CREATE TABLE keap.contact_custom_fields

(
    id INTEGER,
    label TEXT,
    options json,
    record_type VARCHAR(50),
    field_type VARCHAR(50),
    field_name VARCHAR(50),
    default_value VARCHAR(50)
);

CREATE TABLE keap.opportunities_custom_fields

(
    id INTEGER,
    label TEXT,
    options json,
    record_type VARCHAR(50),
    field_type VARCHAR(50),
    field_name VARCHAR(50),
    default_value VARCHAR(50)
);
