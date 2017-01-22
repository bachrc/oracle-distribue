create materialized view personnelDist
  refresh complete start with sysdate next sysdate + 1
  as select * from personnel@hopit;
