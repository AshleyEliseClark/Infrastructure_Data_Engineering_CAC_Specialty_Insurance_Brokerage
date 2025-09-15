-- Reporting views for BI
CREATE VIEW broker_performance_view AS
SELECT b.broker_id, b.month, b.revenue, b.clients_retained, c.broker_name
FROM broker_performance b
JOIN salesforce_clients c ON b.broker_id = c.broker_id;
