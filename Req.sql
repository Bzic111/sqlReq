CREATE TABLE Products
(
	id INT PRIMARY KEY,
	name VARCHAR(255) NOT NULL
);
CREATE TABLE Category
(
	id INT PRIMARY KEY,
	name VARCHAR(255) NOT NULL
);
CREATE TABLE ProductsCategory
(
	products_id  INT not null,
	category_id INT not null
);
INSERT INTO Category 
VALUES  (1, 'Продукты'),
        (2, 'Бытовая химия');

INSERT INTO Products
VALUES  (1, 'Хлеб'),
	(2, 'Молоко'),
	(3, 'Шампунь'),
        (4, 'Книга');

INSERT INTO ProductsCategory
VALUES  (1, 1),
	(2, 1),
	(3, 2);

select prod.name 'Продукт', cat.name 'Категория'
from Products prod
left join ProductsCategory prodcat on prod.id = prodcat.products_id
inner join Category cat on cat.id = prodcat.category_id
order by prod.name