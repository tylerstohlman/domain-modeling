-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS industries;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS activities;
DROP TABLE IF EXISTS industry_memberships;

-- CREATE TABLES

CREATE TABLE salespersons (
id INTEGER PRIMARY KEY AUTOINCREMENT,
first_name TEXT,
last_name TEXT,
title TEXT,
email TEXT
);

CREATE TABLE contacts (
id INTEGER PRIMARY KEY AUTOINCREMENT,
first_name TEXT,
last_name TEXT,
title TEXT,
email TEXT,
phone_number INTEGER, 
company_id TEXT,
salesperson_id TEXT
);

CREATE TABLE industries(
id INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT
);

CREATE TABLE companies (
id INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT,
industry_id INTEGER
);

CREATE TABLE activities (
id INTEGER PRIMARY KEY AUTOINCREMENT,
date INTEGER,
category TEXT,
time INTEGER,
content TEXT,
company_id INTEGER,
industry_id INTEGER,
salesperson_id INTEGER,
contact_id INTEGER
);

CREATE TABLE industry_memberships (
id INTEGER PRIMARY KEY AUTOINCREMENT,
company_id INTEGER,
industry_id INTEGER
);