CREATE SCHEMA IF NOT EXISTS smartsheet;

CREATE TABLE smartsheet.sheet (

id INTEGER,
fromId INTEGER,
ownerId INTEGER,
accessLevel VARCHAR(36),
attachments json[],
cellImageUploadEnabled BOOLEAN,
columns json[],
createdAt TIMESTAMP,
crossSheetReferences json[],
dependenciesEnabled BOOLEAN,
discussions json[],
effectiveAttachmentOptions text[],
favorite BOOLEAN,
ganttEnabled BOOLEAN,
hasSummaryFields BOOLEAN,
isMultiPicklistEnabled BOOLEAN,
modifiedAt TIMESTAMP,
name VARCHAR(255),
owner VARCHAR(255),
permalink VARCHAR(255),
projectSettings json,
readOnly BOOLEAN,
resourceManagementEnabled BOOLEAN,
resourceManagementType VARCHAR(36),
rows json[],
showParentRowsForFilters BOOLEAN,
source json,
summary json,
totalRowCount INTEGER,
userPermissions json,
userSettings json,
version INTEGER,
workspace json

);


CREATE TABLE smartsheet.rows
(

id INTEGER,
sheetId INTEGER,
siblingId INTEGER,
accessLevel VARCHAR(25),
attachments json[],
cells json[],
columns json[],
conditionalFormat VARCHAR(255),
createdAt TIMESTAMP,
createdBy json,
discussions json[],
proofs json,
expanded BOOLEAN,
filteredOut BOOLEAN,
format VARCHAR(255),
inCriticalPath BOOLEAN,
locked BOOLEAN,
lockedForUser BOOLEAN,
modifiedAt TIMESTAMP,
modifiedBy json,
permaLink VARCHAR(255),
rowNumber INTEGER,
version INTEGER

);

CREATE TABLE smartsheet.columns
(

autoNumberFormat json,
contactOptions json[],
description text,
format VARCHAR(255),
formula text,
hidden BOOLEAN,
id INTEGER,
index INTEGER,
locked BOOLEAN,
lockedForUser BOOLEAN,
options text[],
_primary BOOLEAN,
symbol VARCHAR(255),
systemColumnType VARCHAR(25),
tags text[],
title VARCHAR(255),
type VARCHAR(25),
validation BOOLEAN,
version INTEGER,
width INTEGER

);


CREATE TABLE smartsheet.cells

(

columnId INTEGER,
columnType VARCHAR(36),
conditionalFormat VARCHAR(36),
displayValue VARCHAR(36),
format VARCHAR(36),
formula VARCHAR(36),
hyperlink json,
image json,
linkInFromCell json,
linksOutToCells json[],
objectValue json,
overrideValidation BOOLEAN,
strict BOOLEAN,
value text

);