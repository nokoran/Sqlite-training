insert into city
values (1, 'Kyiv'),
 (2, 'Lviv'),
 (3, 'Odesa');

insert into street
values (1, 'Shevchenka', 1),
 (2, 'Symonenka', 2),
 (3, 'Symonenka', 1),
 (4, 'Shevchenka', 3),
 (5, 'Kvitkova', 2);

insert into supermarket
values (1, 'Silpo', 1, 10),
 (2, 'Silpo', 2, 12),
 (3, 'Silpo', 3, 13),
 (4, 'Silpo', 2, 14),
 (5, 'Silpo', 1, 15),
 (6, 'Silpo', 3, 16),
 (7, 'Silpo', 3, 17);

insert into person
values (1, 'Mykyta', 'Kravchenko', '2000-07-01'),
 (2, 'Dmytro', 'Zhovtobruh', '1999-08-28'),
 (3, 'Danylo', 'Kravchenko', '1990-07-25'),
 (4, 'Anastasiya', 'Kravchenko', '2006-01-20'),
 (5, 'Maria', 'Kravchenko', '2003-02-09'),
 (6, 'Maksym', 'Marchuk', '1979-02-02'),
 (7, 'Anatolii', 'Kozak', '1986-04-15'),
 (8, 'Raya', 'Petryk', '2001-05-16'),
 (9, 'Tanasiyka', 'Kravec', '2001-02-11'),
 (10, 'Petro', 'Kravchenko', '2000-03-19');

insert into contact_type
values (1, 'phone'),
 (2, 'email');

insert into person_contact
values (1, 1, 1 ,'+38000000000'),
 (2, 1, 2 ,'generic_email@email.com'),
 (3, 2, 1 ,'+38000000000'),
 (4, 2, 2 ,'generic_email@email.com'),
 (5, 3, 1 ,'+38000000000'),
 (6, 3, 2 ,'generic_email@email.com'),
 (7, 4, 1 ,'+38000000000'),
 (8, 4, 2 ,'generic_email@email.com'),
 (9, 5, 1 ,'+38000000000'),
 (10, 5, 2 ,'generic_email@email.com'),
 (11, 6, 1 ,'+38000000000'),
 (12, 6, 2 ,'generic_email@email.com'),
 (13, 7, 1 ,'+38000000000'),
 (14, 7, 2 ,'generic_email@email.com'),
 (15, 8, 1 ,'+38000000000'),
 (16, 8, 2 ,'generic_email@email.com'),
 (17, 9, 1 ,'+38000000000'),
 (18, 9, 2 ,'generic_email@email.com'),
 (19, 10, 1 ,'+38000000000'),
 (20, 10, 2 ,'generic_email@email.com');

insert into customer
values (1, 1555555555554444, 10),
 (2, 2555555555554444, 10),
 (3, 3555555555554444, 10),
 (4, 4555555555554444, 10),
 (5, 5555555555554444, 10),
 (6, 6555555555554444, 10),
 (7, 7555555555554444, 10),
 (8, 8555555555554444, 10),
 (9, 9555555555554444, 10),
 (10, 0555555555554444, 10);

insert into product_category
values (1, 'fruit'),
 (2, 'vegetable'),
 (3, 'drink');

insert into product_title
values (1, 'Apple', 1),
 (2, 'Orange', 1),
 (3, 'Mango', 1),
 (4, 'Pear', 1),
 (5, 'Carrot', 2),
 (6, 'Tomato', 2),
 (7, 'Potato', 2),
 (8, 'Gorilka', 1),
 (9, 'Pepsi', 1),
 (10, 'Water', 1);

insert into manufacturer
values (1, 'Whatever'),
 (2, 'Whatever2'),
 (3, 'Whatever3'),
 (4, 'Whatever4');

insert into product
values (1, 1, 1, 20, 'Big Apple'),
 (2, 1, 2, 10, 'Small Apple'),
 (3, 2, 3, 20, 'Big Orange'),
 (4, 2, 2, 10, 'Small Orange'),
 (5, 3, 4, 20, 'Big Mango'),
 (6, 3, 2, 10, 'Small Mango'),
 (7, 4, 1, 20, 'Big Pear'),
 (8, 4, 3, 10, 'Small Pear'),
 (9, 5, 1, 20, 'Big Carrot'),
 (10, 5, 4, 10, 'Small Carrot'),
 (11, 6, 1, 20, 'Big Tomato'),
 (12, 6, 2, 10, 'Small Tomato'),
 (13, 7, 1, 20, 'Big Potato'),
 (14, 7, 2, 10, 'Small Potato'),
 (15, 8, 4, 20, 'Big Gorilka'),
 (16, 8, 3, 10, 'Small Gorilka'),
 (17, 9, 1, 20, 'Big Pepsi'),
 (18, 9, 2, 10, 'Small Pepsi'),
 (19, 10, 3, 20, 'Big Water'),
 (20, 10, 4, 10, 'Small Water');

insert into customer_order
 values (1, '2022-07-27', 1, 1),
 (2, '2022-07-27', 2, 2),
 (3, '2022-07-27', 3, 3),
 (4, '2022-07-27', 4, 4),
 (5, '2022-07-27', 5, 5),
 (6, '2022-07-27', 6, 6),
 (7, '2022-07-27', 7, 7),
 (8, '2022-07-27', 1, 8),
 (9, '2022-07-27', 2, 9),
 (10, '2022-07-27', 3, 10),
 (11, '2022-07-27', 4, 1),
 (12, '2022-07-27', 5, 2),
 (13, '2022-07-27', 6, 3),
 (14, '2022-07-27', 7, 4),
 (15, '2022-07-27', 1, 5),
 (16, '2022-07-27', 2, 6),
 (17, '2022-07-27', 3, 7),
 (18, '2022-07-27', 4, 8),
 (19, '2022-07-27', 5, 9),
 (20, '2022-07-27', 6, 10);

insert into order_details
values (1, 1, 1, 20, 18, 2),
 (2, 2, 2, 10, 9, 2),
 (3, 3, 3, 20, 18, 2),
 (4, 4, 4, 10, 9, 2),
 (5, 5, 5, 20, 18, 2),
 (6, 6, 6, 10, 9, 2),
 (7, 7, 7, 20, 18, 2),
 (8, 8, 8, 10, 9, 2),
 (9, 9, 9, 20, 18, 2),
 (10, 10, 10, 10, 9, 2),
 (11, 11, 11, 20, 18, 2),
 (12, 12, 12, 10, 9, 2),
 (13, 13, 13, 20, 18, 2),
 (14, 14, 14, 10, 9, 2),
 (15, 15, 15, 20, 18, 2),
 (16, 16, 16, 10, 9, 2),
 (17, 17, 17, 20, 18, 2),
 (18, 18, 18, 10, 9, 2),
 (19, 19, 19, 20, 18, 2),
 (20, 20, 20, 10, 9, 2);


