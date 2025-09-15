-- Dimension table for clients
CREATE TABLE dim_clients AS
SELECT client_id, client_name, industry
FROM staging_clients;
