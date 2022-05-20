select * 
from "Brewery_data";


select "SALES_REP", "EMAILS", SUM("PROFIT") AS "PROFIT"
from "Brewery_data"
where "COUNTRIES" = 'Togo' and "YEARS" = 2018
group by "SALES_REP", "EMAILS"
order by "PROFIT" DESC
Limit 1;

---SECTION B 1

select DISTINCT "COUNTRIES"
from "Brewery_data";

select "BRANDS", SUM("QUANTITY") AS "QUANTITIES", "COUNTRIES"
from "Brewery_data"
where "COUNTRIES" IN ('Benin', 'Senegal', 'Togo')
group by "BRANDS", "COUNTRIES"
order by "QUANTITIES" DESC
limit 3;

---SECTION B 2 
select "BRANDS", SUM("QUANTITY") AS "QUANTITIES", "COUNTRIES"
from "Brewery_data"
where "COUNTRIES" = 'Ghana'
group by "BRANDS", "COUNTRIES"
order by "QUANTITIES" DESC
limit 2;

---SECTION B 3
select DISTINCT "BRANDS"
from "Brewery_data";

select *
from "Brewery_data"
where "COUNTRIES" = 'Nigeria'
 And "BRANDS" NOT IN ('bete malt', 'grand malt');
 
 ---SECTION B 4
  select "BRANDS" AS "FAVORITE_MALT_OF_ANGLOPHONE_COUNTRIES"
 from "Brewery_data"
 where "COUNTRIES" IN ('Nigeria', 'Ghana')
 AND "YEARS" IN  (2018, 2019)
 AND "BRANDS" LIKE '%malt%'
 group by "BRANDS"
 order by SUM("QUANTITY") DESC
 LIMIT 1;
 
  ---SECTION B 5
  select "BRANDS" AS HIGHEST_SOLD_IN_BRAND_NIGERIA
  from "Brewery_data"
  where "COUNTRIES" IN ('Nigeria')
  AND "YEARS" = 2019
  group by "BRANDS"
  order by SUM("QUANTITY") DESC;
  
---SECTION B 6
 select "BRANDS" AS "FAVORITE_BRAND_OF_SOUTH-SOUTH_NIGERIA"
from "Brewery_data"
where "COUNTRIES" = 'Nigeria'
AND "REGION" = 'southsouth'
group by "FAVORITE_BRAND_OF_SOUTH-SOUTH_NIGERIA"
order by SUM("QUANTITY") DESC
limit 1;
  
 ---SECTION B 7
select DISTINCT "BRANDS", SUM("QUANTITY") AS "BEER_CONSUMED_IN_NIGERIA"
from "Brewery_data"
where "COUNTRIES" = 'Nigeria'
AND "BRANDS" NOT IN ('beta malt' , 'grand malt')
group by "BRANDS", "COUNTRIES"
order by "BRANDS" DESC
limit 10;

---SECTION B 8
select DISTINCT "REGION", SUM("QUANTITY") AS "LEVEL_OF_CONSUMPTION_OF_BUDWEISER_IN_NIGERIA"
from "Brewery_data"
where "COUNTRIES" = 'Nigeria'
AND "BRANDS" = 'budweiser'
group by "REGION"
limit 20;

---SECTION B 9
select DISTINCT "REGION",SUM("QUANTITY") AS "LEVEL_OF_CONSUMPTION_OF_BUDWEISER_IN_NIGERIA"
from "Brewery_data"
where "YEARS" = 2019
AND "BRANDS" = 'budweiser'
group by "REGION";

-----SECTION C 1
select "COUNTRIES", SUM("QUANTITY") AS "COUNTRY_WITH_THE_HIGHEST_BEER_CONSUMPTION"
from "Brewery_data"
where "BRANDS" NOT IN ('beta malt','grand malt')
group by "COUNTRIES"
order by SUM("QUANTITY")DESC
limit 1;

-----SECTION C 2
select "SALES_REP",SUM("QUANTITY") AS "QUANTITIES"
from "Brewery_data"
where "COUNTRIES" = 'Senegal'
AND "BRANDS" = 'budweiser'
group by "SALES_REP","COUNTRIES"
order by SUM("QUANTITY")DESC
limit 1;

-----SECTION C 3
select DISTINCT "COUNTRIES","PROFIT","YEARS", "MONTHS"
from "Brewery_data"
where "YEARS" = 2019
AND "MONTHS" IN ('October','November','December')
order by "PROFIT" DESC
limit 1;

----SECTION A 1 
select "BRANDS", SUM("PROFIT")
from "Brewery_data"
WHERE "YEARS" IN ('2017','2018','2019') AND "COUNTRIES" IN ('Ghana','Nigeria')
GROUP BY "Brewery_data" "BRANDS";

----SECTION A 3
select  SUM("PROFIT") AS PROFIT,"YEARS"
from "Brewery_data"
where "YEARS" = 2019
group by "COUNTRIES", "YEARS"
order by PROFIT desc;

----SECTION A 4
select  SUM("PROFIT") AS PROFIT,"YEARS"
from "Brewery_data"
where "YEARS" in ('2017','2018','2019')
group by "YEARS"
order by PROFIT desc;

----SECTION A 5
select  "PROFIT", "MONTHS","YEARS"
from "Brewery_data"
order by "PROFIT" desc;

---SECTION A 6
---select "PROFIT","YEARS","MONTHS"
---from "Brewery_data"
---where "MONTHS" = 'December'
---AND "YEARS" = 2018
--order by "PROFIT" ASC
---limit 1;


---SECTION A 7
---select "MONTHS", SUM("PROFIT"), SUM("COST")*100 AS "percentageprofit"
---from "Brewery_data"
---where "YEARS" = 2019
--group by "MONTHS" 
--order by "percentageprofit" desc;

---SECTION A 8
select "BRANDS", SUM("PROFIT")
from "Brewery_data"
where "COUNTRIES" = 'Senegal'
group by "BRANDS"
order by SUM("PROFIT") desc;