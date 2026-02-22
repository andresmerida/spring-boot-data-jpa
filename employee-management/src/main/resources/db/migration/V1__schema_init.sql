-- create address table
create table address (
                         id 			serial primary key,
                         street 		varchar(255) not null,
                         city		varchar(100) not null,
                         state 		varchar(100) not null,
                         zip_code	varchar(20)	 not null,
                         country		varchar(100) not null
);

-- create employee table
create table employee (
                          id			serial primary key,
                          first_name	varchar(100) not null,
                          last_name	varchar(100) not null,
                          email		varchar(255) unique not null,
                          address_id 	int references address(id) on delete set null
);

-- create employee_details
create table employee_details (
                                  employee_id int primary key references employee(id) on delete cascade,
                                  social_security_number varchar(11) unique not null,
                                  bank_account_number varchar(34) not null,
                                  date_of_birth date not null,
                                  hire_date	date default CURRENT_DATE,
                                  created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                  updated_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- create the custom ENUM type with a predefined set of values.
CREATE TYPE task_status AS ENUM ('TODO', 'INPROGRESS', 'DONE');

-- create task table (one-to-many relationship with employee)
create table task (
                      id serial 	primary key,
                      title 		varchar(255) 	not null,
                      status	task_status		not null,
                      description	text,
                      due_date	date,
                      employee_id	int		references employee(id) on delete cascade
);

-- create project table
create table project (
                         id serial primary key,
                         name		varchar(255) not null,
                         start_date 	date,
                         end_date	date
);

-- create enum rols
CREATE TYPE employee_role AS ENUM ('PROJECT MANAGER', 'TEAM LEAD', 'TECNICAL LEAD', 'TEAM MEMBERS',
	'BUSINESS ANALYST', 'STAKEHOLDERS');

-- create employee_project junction table (many-to-many)
create table employee_project (
                                  employee_id 	int references employee(id) on delete cascade,
                                  project_id 		int references project(id) on delete cascade,
                                  role_employee_project	employee_role not null,
                                  primary key (employee_id, project_id)
);

-- create the trigger function specially for updated_at
CREATE OR REPLACE FUNCTION update_modified_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = CURRENT_TIMESTAMP;
RETURN NEW;
END;
$$ language 'plpgsql';

-- attach the trigger to the table specifically for updated_at
CREATE TRIGGER update_employee_details_modtime
    BEFORE UPDATE ON employee_details
    FOR EACH ROW
    EXECUTE FUNCTION update_modified_column();
