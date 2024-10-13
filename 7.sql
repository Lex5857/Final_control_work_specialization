USE animals;

CREATE TABLE IF NOT EXISTS Pets(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(45),
    type VARCHAR(45),
    breed  VARCHAR(50),
    BirthDate DATE,
    Commands TEXT
);

INSERT Pets (name, type, breed, BirthDate, Commands)
VALUES
('Арго', 'dog', 'Немецкая овчарка', '2024-01-20', 'сидетьpets'),
('Тузик', 'dog', 'Лабрадор-ретривер', '2020-05-21', 'апорт, сидеть'),
('Барсик', 'cat', 'Шотландская вислоухая', '2018-08-10', 'дай лапу, прыжок'),
('Васька', 'cat', 'Мейн-кун', '2023-06-26', 'сидеть'),
('Гром', 'hamster', 'Джунгарские хомяки', '2024-09-05', 'стоять, лапа');

CREATE TABLE IF NOT EXISTS Pack_animals(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(45),
    type VARCHAR(45),
    breed  VARCHAR(50),
    BirthDate DATE,
    Commands TEXT
);

INSERT Pack_animals (name, type, breed, BirthDate, Commands)
VALUES
('Мустанг', 'horse', 'Фризская лошадь', '2022-01-24', 'галоп, рысь'),
('Буцефал', 'horse', 'Донская лошадь', '2019-05-14', 'каприоль'),
('Рокфор', 'camel', 'Одногорбый верблюд', '2020-01-24', 'сидеть'),
('Рокси', 'donkey', 'Каталонский осёл', '2023-07-06', 'стой');

SELECT * FROM Pets
UNION ALL
SELECT * FROM Pack_animals;

SELECT name, BirthDate, (YEAR(CURRENT_DATE) - YEAR(BirthDate)) AS age
FROM Pets
WHERE (YEAR(CURRENT_DATE) - YEAR(BirthDate)) BETWEEN 1 and 3
UNION ALL
SELECT name, BirthDate, (YEAR(CURRENT_DATE) - YEAR(BirthDate)) AS age
FROM Pack_animals
WHERE (YEAR(CURRENT_DATE) - YEAR(BirthDate)) BETWEEN 1 and 3;

DELETE FROM Pack_animals WHERE type='camel';

SELECT * FROM Pack_animals;




