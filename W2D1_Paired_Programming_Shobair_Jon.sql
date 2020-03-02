
-- Paired assignment
select * from houseprices;
select count(*) from houseprices;

-- Return a field calculating the division of saleprice by lotarea. Name this field price_per_unit.
select saleprice, lotarea, saleprice / lotarea as price_per_unit from houseprices;

-- Return a field containing a string that reads like “This house was built in [yearbuilt]."
select concat('This house was built in ', yearbuilt) from houseprices;

-- Generate a one-row report with the total number of rows, the earliest and latest year built, and the average lot area.
select count(*) as total_rows, min(yearbuilt) as earliest_build, max(yearbuilt) as latest_built, avg(lotarea) as average_lotarea from houseprices;

-- Generate a second report with all records and the neighborhood column, your year built column above, your price_per_unit column, and a column that concatenates building type and house style. 
select yearbuilt, neighborhood, saleprice / lotarea as price_per_unit, concat('Bulding Type: ', bldgtype, '; House Style: ', housestyle) from houseprices;

