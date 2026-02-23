alter type employee_role rename value 'PROJECT MANAGER' TO 'PROJECT_MANAGER';
alter type employee_role rename value 'TEAM LEAD' TO 'TEAM_LEAD';
alter type employee_role rename value 'TECNICAL LEAD' TO 'TECHNICAL_LEAD';
alter type employee_role rename value 'TEAM MEMBERS' TO 'TEAM_MEMBERS';
alter type employee_role rename value 'BUSINESS ANALYST' TO 'BUSINESS_ANALYST';

alter table employee_project rename column role_employee_project to role;
