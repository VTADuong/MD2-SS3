CREATE TABLE classes(
	`class_id` INT PRIMARY KEY NOT NULL,
    `class_name` VARCHAR (100) NOT NULL,
    `year` VARCHAR (4)
);
CREATE TABLE students(
	`student_id` INT PRIMARY KEY NOT NULL,
    `student_name` VARCHAR (100) NOT NULL,
    `dob` DATE,
    `gender` VARCHAR (10),
    `class_id` INT,
    FOREIGN KEY (`class_id`) REFERENCES classes (`class_id`)
);