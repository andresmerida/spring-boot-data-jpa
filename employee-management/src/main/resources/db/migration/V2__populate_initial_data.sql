
-- 1. Insert 50 Addresses
INSERT INTO address (street, city, state, zip_code, country) VALUES
                                                                 ('101 Maple St', 'City A', 'State A', '10001', 'USA'), ('102 Maple St', 'City B', 'State B', '10002', 'USA'),
                                                                 ('103 Maple St', 'City C', 'State C', '10003', 'USA'), ('104 Maple St', 'City D', 'State D', '10004', 'USA'),
                                                                 ('105 Maple St', 'City E', 'State E', '10005', 'USA'), ('106 Maple St', 'City F', 'State F', '10006', 'USA'),
                                                                 ('107 Maple St', 'City G', 'State G', '10007', 'USA'), ('108 Maple St', 'City H', 'State H', '10008', 'USA'),
                                                                 ('109 Maple St', 'City I', 'State I', '10009', 'USA'), ('110 Maple St', 'City J', 'State J', '10010', 'USA'),
                                                                 ('111 Pine St', 'City A', 'State A', '10011', 'USA'), ('112 Pine St', 'City B', 'State B', '10012', 'USA'),
                                                                 ('113 Pine St', 'City C', 'State C', '10013', 'USA'), ('114 Pine St', 'City D', 'State D', '10014', 'USA'),
                                                                 ('115 Pine St', 'City E', 'State E', '10015', 'USA'), ('116 Pine St', 'City F', 'State F', '10016', 'USA'),
                                                                 ('117 Pine St', 'City G', 'State G', '10017', 'USA'), ('118 Pine St', 'City H', 'State H', '10018', 'USA'),
                                                                 ('119 Pine St', 'City I', 'State I', '10019', 'USA'), ('120 Pine St', 'City J', 'State J', '10020', 'USA'),
                                                                 ('121 Oak Ave', 'City A', 'State A', '10021', 'USA'), ('122 Oak Ave', 'City B', 'State B', '10022', 'USA'),
                                                                 ('123 Oak Ave', 'City C', 'State C', '10023', 'USA'), ('124 Oak Ave', 'City D', 'State D', '10024', 'USA'),
                                                                 ('125 Oak Ave', 'City E', 'State E', '10025', 'USA'), ('126 Oak Ave', 'City F', 'State F', '10026', 'USA'),
                                                                 ('127 Oak Ave', 'City G', 'State G', '10027', 'USA'), ('128 Oak Ave', 'City H', 'State H', '10028', 'USA'),
                                                                 ('129 Oak Ave', 'City I', 'State I', '10029', 'USA'), ('130 Oak Ave', 'City J', 'State J', '10030', 'USA'),
                                                                 ('131 Elm St', 'City A', 'State A', '10031', 'USA'), ('132 Elm St', 'City B', 'State B', '10032', 'USA'),
                                                                 ('133 Elm St', 'City C', 'State C', '10033', 'USA'), ('134 Elm St', 'City D', 'State D', '10034', 'USA'),
                                                                 ('135 Elm St', 'City E', 'State E', '10035', 'USA'), ('136 Elm St', 'City F', 'State F', '10036', 'USA'),
                                                                 ('137 Elm St', 'City G', 'State G', '10037', 'USA'), ('138 Elm St', 'City H', 'State H', '10038', 'USA'),
                                                                 ('139 Elm St', 'City I', 'State I', '10039', 'USA'), ('140 Elm St', 'City J', 'State J', '10040', 'USA'),
                                                                 ('141 Cedar Dr', 'City A', 'State A', '10041', 'USA'), ('142 Cedar Dr', 'City B', 'State B', '10042', 'USA'),
                                                                 ('143 Cedar Dr', 'City C', 'State C', '10043', 'USA'), ('144 Cedar Dr', 'City D', 'State D', '10044', 'USA'),
                                                                 ('145 Cedar Dr', 'City E', 'State E', '10045', 'USA'), ('146 Cedar Dr', 'City F', 'State F', '10046', 'USA'),
                                                                 ('147 Cedar Dr', 'City G', 'State G', '10047', 'USA'), ('148 Cedar Dr', 'City H', 'State H', '10048', 'USA'),
                                                                 ('149 Cedar Dr', 'City I', 'State I', '10049', 'USA'), ('150 Cedar Dr', 'City J', 'State J', '10050', 'USA');

-- 2. Insert 50 Employees (linking 1-to-1 with the 50 addresses above)
INSERT INTO employee (first_name, last_name, email, address_id) VALUES
                                                                    ('User1', 'Emp', 'user1@company.com', 1), ('User2', 'Emp', 'user2@company.com', 2),
                                                                    ('User3', 'Emp', 'user3@company.com', 3), ('User4', 'Emp', 'user4@company.com', 4),
                                                                    ('User5', 'Emp', 'user5@company.com', 5), ('User6', 'Emp', 'user6@company.com', 6),
                                                                    ('User7', 'Emp', 'user7@company.com', 7), ('User8', 'Emp', 'user8@company.com', 8),
                                                                    ('User9', 'Emp', 'user9@company.com', 9), ('User10', 'Emp', 'user10@company.com', 10),
                                                                    ('User11', 'Emp', 'user11@company.com', 11), ('User12', 'Emp', 'user12@company.com', 12),
                                                                    ('User13', 'Emp', 'user13@company.com', 13), ('User14', 'Emp', 'user14@company.com', 14),
                                                                    ('User15', 'Emp', 'user15@company.com', 15), ('User16', 'Emp', 'user16@company.com', 16),
                                                                    ('User17', 'Emp', 'user17@company.com', 17), ('User18', 'Emp', 'user18@company.com', 18),
                                                                    ('User19', 'Emp', 'user19@company.com', 19), ('User20', 'Emp', 'user20@company.com', 20),
                                                                    ('User21', 'Emp', 'user21@company.com', 21), ('User22', 'Emp', 'user22@company.com', 22),
                                                                    ('User23', 'Emp', 'user23@company.com', 23), ('User24', 'Emp', 'user24@company.com', 24),
                                                                    ('User25', 'Emp', 'user25@company.com', 25), ('User26', 'Emp', 'user26@company.com', 26),
                                                                    ('User27', 'Emp', 'user27@company.com', 27), ('User28', 'Emp', 'user28@company.com', 28),
                                                                    ('User29', 'Emp', 'user29@company.com', 29), ('User30', 'Emp', 'user30@company.com', 30),
                                                                    ('User31', 'Emp', 'user31@company.com', 31), ('User32', 'Emp', 'user32@company.com', 32),
                                                                    ('User33', 'Emp', 'user33@company.com', 33), ('User34', 'Emp', 'user34@company.com', 34),
                                                                    ('User35', 'Emp', 'user35@company.com', 35), ('User36', 'Emp', 'user36@company.com', 36),
                                                                    ('User37', 'Emp', 'user37@company.com', 37), ('User38', 'Emp', 'user38@company.com', 38),
                                                                    ('User39', 'Emp', 'user39@company.com', 39), ('User40', 'Emp', 'user40@company.com', 40),
                                                                    ('User41', 'Emp', 'user41@company.com', 41), ('User42', 'Emp', 'user42@company.com', 42),
                                                                    ('User43', 'Emp', 'user43@company.com', 43), ('User44', 'Emp', 'user44@company.com', 44),
                                                                    ('User45', 'Emp', 'user45@company.com', 45), ('User46', 'Emp', 'user46@company.com', 46),
                                                                    ('User47', 'Emp', 'user47@company.com', 47), ('User48', 'Emp', 'user48@company.com', 48),
                                                                    ('User49', 'Emp', 'user49@company.com', 49), ('User50', 'Emp', 'user50@company.com', 50);

-- 3. Insert 50 Employee Details (Using dynamic generated data to ensure unique SSNs)
INSERT INTO employee_details (employee_id, social_security_number, bank_account_number, date_of_birth)
SELECT
    id,
    '100-00-' || LPAD(id::text, 4, '0'), -- Generates 100-00-0001 to 100-00-0050
    'BANK' || LPAD(id::text, 8, '0'),    -- Generates BANK00000001
    '1990-01-01'::date + (id * interval '10 days') -- Randomizes birthdays
FROM employee;

-- 4. Insert 10 Projects
INSERT INTO project (name, start_date, end_date) VALUES
                                                     ('Alpha Migration', '2023-01-01', '2023-06-30'),
                                                     ('Beta Redesign', '2023-02-15', '2023-08-15'),
                                                     ('Gamma Infrastructure', '2023-03-01', '2023-12-31'),
                                                     ('Delta Marketing', '2023-04-01', '2023-07-30'),
                                                     ('Epsilon Security Patch', '2023-05-01', '2023-06-15'),
                                                     ('Zeta API V2', '2023-06-01', '2023-11-30'),
                                                     ('Eta Mobile App', '2023-07-01', '2024-02-28'),
                                                     ('Theta Data Lake', '2023-08-01', '2024-01-31'),
                                                     ('Iota Cloud Deploy', '2023-09-01', '2023-10-31'),
                                                     ('Kappa AI Integration', '2023-10-01', '2024-05-31');

-- 5. Assign Employees to Projects using ENUM roles
-- Distributing 5 employees per project to ensure all 50 are assigned
INSERT INTO employee_project (employee_id, project_id, role_employee_project) VALUES
                                                                                  (1, 1, 'PROJECT MANAGER'), (2, 1, 'TECNICAL LEAD'), (3, 1, 'BUSINESS ANALYST'), (4, 1, 'TEAM MEMBERS'), (5, 1, 'TEAM MEMBERS'),
                                                                                  (6, 2, 'PROJECT MANAGER'), (7, 2, 'TEAM LEAD'), (8, 2, 'BUSINESS ANALYST'), (9, 2, 'TEAM MEMBERS'), (10, 2, 'TEAM MEMBERS'),
                                                                                  (11, 3, 'PROJECT MANAGER'), (12, 3, 'TECNICAL LEAD'), (13, 3, 'TEAM MEMBERS'), (14, 3, 'TEAM MEMBERS'), (15, 3, 'STAKEHOLDERS'),
                                                                                  (16, 4, 'PROJECT MANAGER'), (17, 4, 'TEAM LEAD'), (18, 4, 'TEAM MEMBERS'), (19, 4, 'TEAM MEMBERS'), (20, 4, 'BUSINESS ANALYST'),
                                                                                  (21, 5, 'PROJECT MANAGER'), (22, 5, 'TECNICAL LEAD'), (23, 5, 'TEAM MEMBERS'), (24, 5, 'TEAM MEMBERS'), (25, 5, 'STAKEHOLDERS'),
                                                                                  (26, 6, 'PROJECT MANAGER'), (27, 6, 'TEAM LEAD'), (28, 6, 'TEAM MEMBERS'), (29, 6, 'TEAM MEMBERS'), (30, 6, 'TEAM MEMBERS'),
                                                                                  (31, 7, 'PROJECT MANAGER'), (32, 7, 'TECNICAL LEAD'), (33, 7, 'BUSINESS ANALYST'), (34, 7, 'TEAM MEMBERS'), (35, 7, 'TEAM MEMBERS'),
                                                                                  (36, 8, 'PROJECT MANAGER'), (37, 8, 'TEAM LEAD'), (38, 8, 'TEAM MEMBERS'), (39, 8, 'TEAM MEMBERS'), (40, 8, 'STAKEHOLDERS'),
                                                                                  (41, 9, 'PROJECT MANAGER'), (42, 9, 'TECNICAL LEAD'), (43, 9, 'TEAM MEMBERS'), (44, 9, 'TEAM MEMBERS'), (45, 9, 'BUSINESS ANALYST'),
                                                                                  (46, 10, 'PROJECT MANAGER'), (47, 10, 'TEAM LEAD'), (48, 10, 'TEAM MEMBERS'), (49, 10, 'TEAM MEMBERS'), (50, 10, 'STAKEHOLDERS');

-- 6. Insert Tasks using ENUM statuses
-- Generating a couple of tasks for the first 10 employees as an example
INSERT INTO task (title, status, description, due_date, employee_id) VALUES
                                                                         ('Gather Requirements', 'DONE', 'Initial meetings with stakeholders', '2023-01-10', 1),
                                                                         ('Setup CI/CD pipeline', 'INPROGRESS', 'Configure GitHub actions', '2023-01-20', 2),
                                                                         ('Write Specs', 'TODO', 'Draft functional specifications', '2023-02-01', 3),
                                                                         ('Develop Login UI', 'INPROGRESS', 'Frontend interface for auth', '2023-02-05', 4),
                                                                         ('Develop Auth Backend', 'TODO', 'Backend JWT implementation', '2023-02-10', 5),
                                                                         ('Kickoff Meeting', 'DONE', 'Present project beta to team', '2023-02-20', 6),
                                                                         ('Design Database Schema', 'DONE', 'Create ER models', '2023-02-25', 7),
                                                                         ('Market Research', 'DONE', 'Analyze competitor platforms', '2023-03-01', 8),
                                                                         ('Implement API endpoints', 'TODO', 'Code endpoints for user dashboard', '2023-03-15', 9),
                                                                         ('Write Unit Tests', 'TODO', 'Coverage for auth modules', '2023-03-20', 10);
