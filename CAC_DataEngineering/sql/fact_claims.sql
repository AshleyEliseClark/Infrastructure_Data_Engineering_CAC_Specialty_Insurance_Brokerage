-- Fact table for claims
CREATE TABLE fact_claims AS
SELECT claim_id, client_id, policy_id, claim_amount, claim_date, status
FROM staging_claims;
