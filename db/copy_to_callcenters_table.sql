COPY callcenters(name, priority, networked, created_at, updated_at)
FROM 'c:\plaza_callcenters.csv'
WITH DELIMITER ','
CSV