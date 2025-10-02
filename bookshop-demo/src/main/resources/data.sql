INSERT INTO format(id, name) VALUES (1, 'Paperback'),
                                    (2, 'Hardcover');
INSERT INTO category(id, name) VALUES (1, 'Fiction'),
                                    (2, 'Nonfiction'),
                                      (3, 'Travel');
INSERT INTO author(id, name, date_of_birth) VALUES (1, 'Herman Hesse', '1990-01-01'),
                                                   (2, 'Oscar Wilde', '1991-01-01'),
                                                   (3, 'William Shakespeare', '1992-01-01'),
                                                   (4, 'Richard Dawkins', '1993-01-01'),
                                                   (5, 'Tom Turich', '1994-01-01'),
                                                   (6, 'James Joyce', '1995-01-01'),
                                                   (7, 'Thomas Wolfe', '1996-01-01');
INSERT INTO languages(id, name) VALUES (1, 'English'),
                                    (2, 'German');
INSERT INTO book(id, name, category_id, author_id, language_id, quantity, format_id, price, isbn)
    VALUES (1, 'Der Steppenwolf', 1, 1, 1, 30, 1, 20.00, '978-35183665'),
           (2, 'Demian', 1, 1, 1, 31, 1, 30, '978-35183665'),
           (3, 'Das glasperlenspiel', 1, 1, 1, 33, 1, 40.00, '978-35183665'),
           (4, 'Plays, Prose Writings', 1, 1, 1, 33, 1, 50.00, '978-35183665'),
           (5, 'Hamlet', 1, 1, 1, 33, 1, 60.00, '978-35183665'),
           (6, 'Algebra', 2, 2, 1, 33, 1, 70.00, '978-35183665'),
           (7, 'Introduction Quemestry', 2, 2, 1,33, 1, 80.00, '978-35183665'),
           (8, 'Baldor', 2, 2, 1, 33, 1, 90.00, '978-35183665'),
           (9, 'Diagonal', 2, 2, 1, 33, 1, 100.00, '978-35183665'),
           (10, 'La mascara', 2, 2, 1, 33, 1, 110.00, '978-35183665'),
           (11, 'La niña de sus ojos', 3, 3, 2, 33, 2, 120.00, '978-35183665'),
           (12, 'Cara sucia', 3, 3, 2,  33, 2, 130.00, '978-35183665'),
           (13, 'Las venas abiertas de america', 3, 3, 2, 33, 2, 140.00, '978-35183665'),
           (14, 'La iliada', 1, 3, 2, 33, 2, 150.00, '978-35183665'),
           (15, 'Ulises', 1, 3, 2, 33, 2, 160.00, '978-35183665');
