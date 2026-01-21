CREATE TABLE dwh.fact_spend (
  spend_date date,
  campaign_id varchar(50),
  channel varchar(50),
  cost decimal(10,2),
  impressions int,
  clicks int
);

CREATE TABLE dwh.fact_revenue (
  revenue_date date,
  campaign_id varchar(50),
  channel varchar(50),
  revenue decimal(10,2),
  orders int
);
