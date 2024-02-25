create schema cars;
use cars;
-- READ DATA--
select * from car_dekho;
-- TOTAL CARS TO GET COUNT OF TOTAL RECORD--
SELECT COUNT(*) car_dekho;
-- the managger asked the employee how many cars will be available in 2023?--
select count(*)from car_dekho where year= 2023;
-- The manager asked the employee how many cars is available in 2020,2021,2022,2023--
select count(*)from car_dekho where year= 2020;#74
select count(*)from car_dekho where year= 2021;#7
select count(*)from car_dekho where year= 2022;#7
select count(*)from car_dekho where year= 2023;#6
-- group by--
select count(*) from car_dekho where year in (2020,2021,2022,2023) group by year;
-- client aske me to print total of all cars by yera . i don't seel all the details;
select year, count(*) from car_dekho  group by year;
-- client aseked to car delar agent how many disel cars will there be in 2020?--
select count(*)from car_dekho where year=2020 and fuel='Diesel';
-- client requested  a car dealer agent how many petrol cars will there be in 2020?--
select count(*) from car_dekho where year = 2020 and fuel ='petrol'; # 51
-- the manager told the employee to give a print all fuel cars (petrol,diesel and CNG ) come by all year--
select year, count(*) from car_dekho where fuel ='petrol' group by year;
select year, count(*) from car_dekho where fuel ='diesel' group by year;
select year, count(*) from car_dekho where fuel ='CNG' group by year;
-- manager said have where more than 200 cars in agiven yera, which yera had more than 199 cars ?--
select year, count(*) from car_dekho group by year having count(*)>100;
select year, count(*) from car_dekho group by year having count(*)>50
-- the manager said  to the employee all cars details beteen 2015 and 2023 we need complete list-
select count(*) from car_dekho where year between 2015 and 2023;
-- the manager said  to the employee all cars details beteen 2015 and 2023 we need complete list-
select * from car_dekho where year between 2015 and 2023;



