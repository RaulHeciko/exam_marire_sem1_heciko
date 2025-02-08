-- Table 1 gym
UPDATE gym set name = 'StayFit Timisoara' where id = 30;
UPDATE gym set contact_number = 755301820 where name = 'Gym One 5';
UPDATE gym set adress = 'Strada Cetatii nr.24, Timisoara', established_year = 2018 where name = 'Dream Body';
UPDATE gym set name = 'XOX Gym Arad', website  = 'https://www.XOX-Gym-Arad.ro' where contact_number = 722300130;
UPDATE gym set name = 'Tryhard Gym', website = 'https://www.tryhard-gym.ro' where id = 24;
UPDATE gym set adress = 'Strada Industriei nr.49, Timisoara' where name = 'Power House';
UPDATE gym set website = 'https://www.warrior-gym.ro', contact_number = 792300702, name = 'Warrior Gym' where name = 'Red Gym';
UPDATE gym set established_year = 2010, name = 'Powerlifting Gym', website = 'https://www.powerliftin-gym.ro' where id = 14;
UPDATE gym set name = 'Rebellion Gym', adress = 'Strada Morii nr.8, Timisoara', established_year = 2024, website = 'https://www.rebellion-gym.ro', contact_number = 789271888 where name = 'Oxygen Gym';
UPDATE gym set website = 'https://www.elitefitness.ro', name = 'Elitte Fitness', adress = 'Calea Luminii, nr.69' where id = 29;

-- Table 2 employees
select * from employees;
UPDATE employees set name = 'Vasilescu Andrada', age = 23 where id = 5;
UPDATE employees set position = 'janitor', name = 'Vlada Dan' where name = 'Dinu Cristian';

-- Table 3 facilities 


-- Table 4 products 
