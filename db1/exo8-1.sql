CREATE VIEW all_employees AS
  SELECT *
  FROM Personnel
  UNION
  SELECT *
  FROM Personnel@hopit;
