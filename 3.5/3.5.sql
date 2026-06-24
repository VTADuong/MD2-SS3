CREATE TABLE hoc_vien(
	`hv_id` INT PRIMARY KEY,
    `hv_name` VARCHAR (100),
    `hv_email` VARCHAR (50) UNIQUE
);
CREATE TABLE giang_vien(
	`gv_id` INT PRIMARY KEY,
    `gv_name` VARCHAR (100),
    `gv_email` VARCHAR (50) UNIQUE
);
CREATE TABLE khoa_hoc(
	`kh_id` INT PRIMARY KEY,
    `kh_name` VARCHAR (100),
    `mo_ta` VARCHAR (200),
    `gia` VARCHAR (20)
);
ALTER TABLE khoa_hoc ADD CONSTRAINT check_gia CHECK (`gia` > 0);
CREATE TABLE quan_he(
	`id`INT PRIMARY KEY,
    `hv_id` INT,
    `gv_id` INT,
    `kh_id` INT,
    `date` DATE,
    FOREIGN KEY (`hv_id`) REFERENCE hoc_vien (`hv_id`),
    FOREIGN KEY (`kh_id`) REFERENCE khoa_hoc (`kh_id`),
    FOREIGN KEY (`gv_id`) REFERENCE giang_vien (`gv_id`)
);
