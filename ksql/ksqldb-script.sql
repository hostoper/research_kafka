CREATE TABLE currentLocation AS
  SELECT profileId,
         LATEST_BY_OFFSET(latitude) AS la,
         LATEST_BY_OFFSET(longitude) AS lo
  FROM riderlocations
  GROUP BY profileId
  EMIT CHANGES;

CREATE TABLE monitor_operation AS
    SELECT op AS operation, COUNT(op) AS total_record
    FROM CUSTOMERS
    GROUP BY op
    EMIT CHANGES;