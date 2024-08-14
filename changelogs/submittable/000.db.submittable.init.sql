CREATE SCHEMA IF NOT EXISTS submittable;

CREATE TABLE submittable.form (

price INTEGER,
paymentDescription TEXT,
enablePayment BOOLEAN,
currencyCode VARCHAR(36),
formType VARCHAR(36),
formId VARCHAR(36),
name VARCHAR(255),
fields json[],
branches json[],
blocks json[],
createdBy VARCHAR(36),
createdAt TIMESTAMP

);

CREATE TABLE submittable.submission (

submissionId INTEGER,
projectId VARCHAR(36),
submitterId VARCHAR(36),
submitterFirstName VARCHAR(255),
submitterLastName VARCHAR(255),
submitterEmail VARCHAR(36),
submissionStatus VARCHAR(36),
isArchivedBySubmitter BOOLEAN,
isArchivedByOrganization BOOLEAN,
isPaid BOOLEAN,
formResponses json[],
labels json[],
reviewStageId VARCHAR(36)

);

