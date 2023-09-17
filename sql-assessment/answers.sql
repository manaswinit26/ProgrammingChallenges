/* I used MySQL Workbench */
Use PMG;

/* create marketing data table */
create table marketing_data (
 date datetime,
 campaign_id varchar(50),
 geo varchar(50),
 cost float,
 impressions float,
 clicks float,
 conversions float
);

/* create website revenue table */
create table website_revenue (
 date datetime,
 campaign_id varchar(50),
 state varchar(2),
 revenue float
);

/* create campaign information table */
create table campaign_info (
 id int not null primary key auto_increment,
 name varchar(50),
 status varchar(50),
 last_updated_date datetime
);

/* Inserting the values into marketing data table*/
INSERT INTO marketing_data (date, campaign_id, geo, cost, impressions, clicks, conversions)
VALUES
('2023-07-29 0:00:00', 64441550, 'United States-TX', 107.86, 2486, 1737, 294),
('2023-08-14 0:00:00', 64441550, 'United States-OH', 230.99, 2465, 1747, 275),
('2023-08-12 0:00:00', 64441550, 'United States-GA', 214.94, 2461, 1306, 352),
('2023-08-04 0:00:00', 55304737, 'United States-NY', 123.74, 1069, 1356, 317),
('2023-08-19 0:00:00', 86363015, 'United States-GA', 122.74, 1248, 1290, 388),
('2023-07-29 0:00:00', 99058240, 'United States-GA', 162.58, 1025, 1724, 346),
('2023-08-03 0:00:00', 89363211, 'United States-GA', 223.92, 1676, 1714, 480),
('2023-07-28 0:00:00', 89363211, 'United States-OH', 157.63, 1166, 1301, 473),
('2023-08-02 0:00:00', 64441550, 'United States-TX', 102.97, 1532, 1806, 470),
('2023-08-17 0:00:00', 99058240, 'United States-OH', 227.24, 1550, 1236, 442),
('2023-08-13 0:00:00', 55304737, 'United States-TX', 215.55, 2170, 1430, 268),
('2023-07-27 0:00:00', 89363211, 'United States-TX', 106.19, 2295, 1139, 287),
('2023-08-14 0:00:00', 89363211, 'United States-TX', 168.6, 1940, 1587, 411),
('2023-08-10 0:00:00', 89363211, 'United States-TX', 193.18, 2128, 1030, 481),
('2023-07-30 0:00:00', 86363015, 'United States-CA', 198.19, 1873, 1479, 287),
('2023-08-11 0:00:00', 89363211, 'United States-OH', 176.48, 1050, 1418, 449),
('2023-08-17 0:00:00', 89363211, 'United States-GA', 219.56, 1742, 1113, 465),
('2023-07-28 0:00:00', 55304737, 'United States-CA', 141.84, 2216, 1030, 456),
('2023-07-28 0:00:00', 86363015, 'United States-TX', 117.77, 2469, 1617, 499),
('2023-08-03 0:00:00', 89363211, 'United States-GA', 171.03, 1513, 1591, 267),
('2023-08-12 0:00:00', 89363211, 'United States-CA', 211.66, 1799, 1288, 354),
('2023-08-11 0:00:00', 64441550, 'United States-GA', 179.42, 1228, 1283, 479),
('2023-07-26 0:00:00', 64441550, 'United States-GA', 208.19, 1547, 1576, 410),
('2023-07-24 0:00:00', 64441550, 'United States-GA', 176.21, 1423, 1709, 327),
('2023-07-28 0:00:00', 89363211, 'United States-OH', 238.95, 2291, 1059, 305),
('2023-08-04 0:00:00', 89363211, 'United States-NY', 108.93, 2185, 1266, 479),
('2023-07-30 0:00:00', 64441550, 'United States-NY', 169.59, 1128, 1744, 411),
('2023-08-05 0:00:00', 99058240, 'United States-GA', 192.63, 1088, 1849, 326),
('2023-08-14 0:00:00', 55304737, 'United States-GA', 198.12, 1368, 1126, 475),
('2023-08-12 0:00:00', 86363015, 'United States-NY', 222.99, 2328, 1167, 377);

/* Inserting the values into website revenue table*/
INSERT INTO website_revenue (date, campaign_id, state, revenue)
VALUES
('2023-07-24 0:00:00', 64441550, 'GA', 6370),
('2023-08-02 0:00:00', 89363211, 'CA', 6676),
('2023-08-03 0:00:00', 86363015, 'CA', 6239),
('2023-07-24 0:00:00', 55304737, 'TX', 6607),
('2023-08-17 0:00:00', 86363015, 'NY', 7014),
('2023-08-13 0:00:00', 99058240, 'GA', 6765),
('2023-07-30 0:00:00', 55304737, 'TX', 6803),
('2023-08-07 0:00:00', 89363211, 'NY', 5600),
('2023-07-27 0:00:00', 86363015, 'CA', 6920),
('2023-08-09 0:00:00', 55304737, 'NY', 6406),
('2023-08-15 0:00:00', 86363015, 'TX', 6556),
('2023-08-07 0:00:00', 99058240, 'GA', 6371),
('2023-07-26 0:00:00', 64441550, 'TX', 7033),
('2023-07-29 0:00:00', 99058240, 'NY', 7147),
('2023-08-21 0:00:00', 89363211, 'CA', 5249),
('2023-08-09 0:00:00', 99058240, 'OH', 5989),
('2023-08-05 0:00:00', 64441550, 'OH', 5571),
('2023-07-28 0:00:00', 55304737, 'GA', 6964),
('2023-07-31 0:00:00', 99058240, 'GA', 6973),
('2023-08-15 0:00:00', 86363015, 'NY', 6673),
('2023-07-31 0:00:00', 89363211, 'OH', 6743),
('2023-07-26 0:00:00', 55304737, 'GA', 6223),
('2023-08-05 0:00:00', 89363211, 'OH', 6003),
('2023-08-11 0:00:00', 55304737, 'OH', 5824),
('2023-08-19 0:00:00', 89363211, 'TX', 7081),
('2023-08-02 0:00:00', 99058240, 'NY', 7093),
('2023-08-10 0:00:00', 89363211, 'CA', 6335),
('2023-08-09 0:00:00', 86363015, 'OH', 7447),
('2023-07-24 0:00:00', 99058240, 'CA', 5130),
('2023-08-03 0:00:00', 89363211, 'NY', 6465);

/* Inserting the values into campaign info table*/
INSERT INTO campaign_info (id, name, status, last_updated_date)
VALUES
(64441550, 'Campaign1', 'paused', '2023-08-08 0:00:00'),
(55304737, 'Campaign2', 'enabled', '2023-07-25 0:00:00'),
(89363211, 'Campaign3', 'enabled', '2023-08-06 0:00:00'),
(86363015, 'Campaign4', 'paused', '2023-08-14 0:00:00'),
(99058240, 'Campaign5', 'enabled', '2023-07-28 0:00:00');

/* 1. Write a query to get the sum of impressions by day. */
SELECT date, sum(impressions) AS total_impressions
FROM marketing_data
GROUP BY date
ORDER BY date;

/* 2a. Write a query to get the top three revenue-generating states in order of best to worst. */
SELECT state, sum(revenue) AS total_revenue
FROM website_revenue
GROUP BY state
ORDER BY total_revenue DESC
LIMIT 3;

/* 2b. How much revenue did the third best state generate? 
Ohio generated $37,577. */
SELECT state, total_revenue
FROM (
  SELECT state, sum(revenue) AS total_revenue
  FROM website_revenue
  GROUP BY state
  ORDER BY total_revenue DESC
  LIMIT 3
) AS top3
ORDER BY total_revenue ASC
LIMIT 1;

/* 3. Write a query that shows total cost, impressions, clicks, and revenue of each campaign. 
Make sure to include the campaign name in the output. */
SELECT 
	c.name,
    sum(m.cost) AS total_cost,
    sum(m.impressions) AS total_impressions,
    sum(m.clicks) AS total_clicks,
    sum(w.revenue) AS total_revenue
FROM marketing_data m
INNER JOIN campaign_info c
ON m.campaign_id = c.id
INNER JOIN website_revenue w
ON m.campaign_id = w.campaign_id
GROUP BY c.name
ORDER BY c.name;

/* 4. Write a query to get the number of conversions of Campaign5 by state. 
Which state generated the most conversions for this campaign? 
Georgia generated most conversions */
SELECT
    w.state,
    sum(m.conversions) AS total_conversions
FROM marketing_data m
INNER JOIN website_revenue w 
ON m.campaign_id = w.campaign_id
INNER JOIN campaign_info c  
ON m.campaign_id = c.id
WHERE c.name = 'Campaign5'
GROUP BY w.state;

/* 5. In your opinion, which campaign was the most efficient, and why? 
Campaign4 was the most efficient because it has the lowest cost to revenue ratio of all campaigns. 
I chose cost to revenue ratio because it shows which campaign had the lowest cost for its revenue. */
SELECT
    c.name,
    sum(m.cost) AS total_cost,
    sum(w.revenue) AS total_revenue,
	(sum(m.cost) / sum(w.revenue)) AS cost_revenue_ratio /* cost to revenue ratio */
FROM campaign_info c
INNER JOIN marketing_data m
ON c.id = m.campaign_id
INNER JOIN website_revenue w
ON c.id = w.campaign_id
GROUP BY c.name
ORDER BY cost_revenue_ratio;

/* Bonus: 6. Write a query that showcases the best day of the week (e.g., Sunday, Monday, Tuesday, etc.) to run ads. 
The best day of the week is Friday. I decided this based on which day had the highest total conversions. 
I chose to look at conversions becuase it shows how many times an action was resulted from viewing the ad. 
Higher conversion numbers may mean the ad is more successful on Friday as more action is seen on that day. */
SELECT DAYNAME(date) AS day_of_week, sum(conversions) as total_conversions
FROM marketing_data
GROUP BY day_of_week
ORDER BY total_conversions DESC
LIMIT 1;