CREATE TABLE books (
	`book_id` INT PRIMARY KEY,
    `book_name` VARCHAR (50),
    `year_of_publication` INT
);

CREATE TABLE readers (
	`reader_id` INT PRIMARY KEY,
    `reader_name` VARCHAR (100),
    `dob` VARCHAR (4)
    );

CREATE TABLE borrowings (
	`borrow_id` INT PRIMARY KEY,
    `reader_id` INT,
    `book_id` INT,
    `borrow_day` DATE,
    FOREIGN KEY(`reader_id`) REFERENCES readers (`reader_id`),
    FOREIGN KEY (`book_id`) REFERENCES books (`book_id`)
);

ALTER TABLE borrowings MODIFY `borrow_day` DATE NOT NULL;