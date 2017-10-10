DROP DATABASE IF EXISTS TEST;
CREATE DATABASE TEST;
USE TEST;
DROP TABLE IF EXISTS `test`.`book`;


CREATE TABLE BOOK (
	`ID` INT(8) NOT NULL AUTO_INCREMENT,
	`TITLE` VARCHAR(100) NOT NULL,
  `DESCRIPTION` VARCHAR(255) NOT NULL,
	`AUTHOR` VARCHAR(100) NOT NULL,
	`ISBN` VARCHAR(20) NOT NULL,
	`PRINT_YEAR` INT NOT NULL,
	`READ_ALREADY` TINYINT(1) NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO BOOK(ID, TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES(1, 'Мастер и Маргарита', 'В этой истории смешана философия и быт, теология и фантастика, мистика и реализм, мистика и лирика.', 'Михаил Булгаков', '2-266-11156', '2001', true);
INSERT INTO BOOK(ID, TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES(2, 'Преступление и наказание', ' История о Раскольникове, который переживает внутреннюю борьбу.', 'Федор Михайлович Достоевский', '2-266-11157', '1997', false);
INSERT INTO BOOK(ID, TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES(3, 'Маленький принц', ' История, которая заставляет по-другому посмотреть на привычные вещи.', 'Антуан де Сент-Экзюпери', '2-266-11155', '2002', true);
INSERT INTO BOOK(ID, TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES(4, 'Собачье сердце', 'История об эксперименте, который доказал, что из животного можно сделать человека, а вот вывести «животное» из человека нельзя.', 'Михаил Булгаков', '2-266-11153', '2001', true);
INSERT INTO BOOK(ID, TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES(5, 'Три товарища', 'Исповедь о любви, дружбе, боли. История отчаяния и борьбы.', 'Эрих Мария Ремарк', '2-266-11151', '2006', false);
INSERT INTO BOOK(ID, TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES(6, 'Над пропастью во ржи', 'История подростка, который своими глазами показывает свое восприятие мира, точку мировоззрения, отречение от привычных принципов и устоев морали общества, которые не вписываются в его индивидуальные рамки.', 'Джером Сэлинджер', '2-266-11123', '2008', true);
INSERT INTO BOOK(ID, TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES(7, 'Герой нашего времени', 'Лирико-психологический роман, который повествует о человеке со сложным характером. ', 'Михаил Лермонтов', '2-264-11156', '2009', false);
INSERT INTO BOOK(ID, TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES(8, 'Приключения Шерлока Холмса', 'Истории, которые рассказывает друг и помощник детектива доктор Ватсон.', 'Артур Конан Дойл', '1-266-11156', '2017', false);
INSERT INTO BOOK(ID, TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES(9, 'Портрет Дориана Грея', 'История, которая наглядно показывает, что может случиться с душой человека, мучаемой пороками.', 'Оскар Уайльд', '2-66-12156', '1998', false);
INSERT INTO BOOK(ID, TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES(10, 'Властелин колец', 'История о тех, кто готов ради дружбы и спасения мира, пожертвовать самым дорогим и даже своей жизнью.', 'Джон Рональд Руэл Толкин', '2-266-11236', '2005', true);
INSERT INTO BOOK(ID, TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES(11, 'Крестный отец', 'Роман об одной из самых могущественных мафиозных семей Америки прошлого века – семье Корлеоне. ', 'Марио Пьюзо', '2-266-13156', '2001', true);
INSERT INTO BOOK(ID, TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES(12, 'Триумфальная арка', 'Это история его жизни и любви на фоне пережитой войны.', 'Эрих Мария Ремарк', '2-266-11956', '2009', false);
INSERT INTO BOOK(ID, TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES(13, 'Мертвые души', 'История русской души и глупости. ', 'Николай Васильевич Гоголь', '6-266-11156', '2016', true);
INSERT INTO BOOK(ID, TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES(14, 'Поющие в терновнике', 'Потрясающий роман, который повествует не только о любви мужчины и женщины и сложных отношениях, но и о чувствах к семье, к родным местам и природе.', 'Колин Маккалоу', '2-277-11156', '2001', true);
INSERT INTO BOOK(ID, TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES(15, 'Грозовой перевал', 'В уединенном поместье живет семья, у которой в доме царит напряженная атмосфера.', 'Эмили Бронте', '2-266-18159', '2011', false);
INSERT INTO BOOK(ID, TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES(16, 'На западном фронте без перемен', 'Книга о войне от лица простого солдата. ', 'Эрих Мария Ремарк', '2-176-11156', '2015', true);
INSERT INTO BOOK(ID, TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES(17, 'Демиан', 'Книга просто переворачивает все представления о жизни.', 'Герман Гессе', '2-266-11446', '2005', true);
INSERT INTO BOOK(ID, TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES(18, 'Зеленая миля', 'Пол Эджкомб бывший сотрудник тюрьмы, который служил в блоке для осужденных на смертную казнь.', 'Стивен Кинг', '2-277-11156', '2016', false);
INSERT INTO BOOK(ID, TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES(19, 'Сто лет одиночества', 'В этом романе жизнь каждого героя пронизана одиночеством, впрочем, как и городка, где живут эти люди.', 'Габриэль Гарсиа Маркес', '8-266-11156', '2017', true);
INSERT INTO BOOK(ID, TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES(20, 'Собор Парижской Богоматери', 'Париж 15 века. С одной стороны он полон величия, а другой похож на сточную яму', 'Виктор Гюго', '2-299-11156', '2003', true);
INSERT INTO BOOK(ID, TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES(21, 'Робинзон Крузо', 'Дневник моряка потерпевшего крушение корабля и прожившего в одиночестве на острове 28 лет.', 'Даниель Дефо', '9-266-11956', '2001', false);
INSERT INTO BOOK(ID, TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES(22, 'Приключения Алисы в стране чудес', 'Странная и загадочная история о девочке, которая в погоне за белым кроликом оказывается в другом и чудесатом мире.', 'Льюис Кэрролл', '2-567-11156', '2017', true);
INSERT INTO BOOK(ID, TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES(23, 'По ком звонит колокол', 'На страницах книги война, но даже в мире полным боли и страха, есть место прекрасному.', 'Эрнест Хемингуэй', '2-333-11156', '2017', false);
INSERT INTO BOOK(ID, TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES(24, 'Мартин Иден', 'Что может сделать любовь? Любовь Мартина к прекрасной Руфь заставила его бороться.', 'Джек Лондон', '9-266-11000', '2001', true);
INSERT INTO BOOK(ID, TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES(25, 'Понедельник начинается в субботу', 'Фантастическая и увлекательная сказка, в которой магия переплетается с реальностью.', 'Аркадий и Борис Стругацкие', '1-266-87956', '2017', true);