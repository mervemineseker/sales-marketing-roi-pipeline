CREATE TABLE stg.spend (
  spend_date date,
  campaign_id varchar(50),
  channel varchar(50),
  cost decimal(10,2),
  impressions int,
  clicks int,
  load_date datetime2 default sysutcdatetime()
);

CREATE TABLE stg.revenue (
  revenue_date date,
  campaign_id varchar(50),
  channel varchar(50),
  revenue decimal(10,2),
  orders int,
  load_date datetime2 default sysutcdatetime()
);
