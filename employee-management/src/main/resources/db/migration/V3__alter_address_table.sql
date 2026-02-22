alter table address rename column street to address_line1;
alter table address add column address_line2 varchar(255) default null;

-- ADD the column
alter table employee_details add column salary NUMERIC(10,2);

-- populate existing 50 employees with random salary
update employee_details set salary = floor(random()*(120000 - 60000 + 1) + 60000);

-- Make it not null
alter table employee_details alter column salary set not null;
