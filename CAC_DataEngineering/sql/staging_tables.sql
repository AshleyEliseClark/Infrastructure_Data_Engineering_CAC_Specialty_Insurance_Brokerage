-- Staging tables for insurance data
CREATE TABLE staging_clients AS SELECT * FROM salesforce_clients;
CREATE TABLE staging_claims AS SELECT * FROM claims;
CREATE TABLE staging_brokers AS SELECT * FROM broker_performance;
