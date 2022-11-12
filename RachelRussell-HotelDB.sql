DROP DATABASE IF EXISTS RachelRussellHotelDB;
CREATE DATABASE RachelRussellHotelDB;
USE RachelRUssellHotelDB;

CREATE TABLE guest(
	guest_ID INT AUTO_INCREMENT NOT NULL,
    CONSTRAINT pk_guest
		PRIMARY KEY (guest_ID),
	firstName VARCHAR(25),
    lastName VARCHAR(50),
    address VARCHAR(150),
    city VARCHAR(25),
    state CHAR(3),
    zip INT,
    phone VARCHAR(25)
);

CREATE TABLE ammenities(
	ammenities_ID INT AUTO_INCREMENT NOT NULL,
    CONSTRAINT pk_ammenities
		PRIMARY KEY (ammenities_ID),
	ammenity_name VARCHAR (50)
);

CREATE TABLE room_type(
	room_type_ID INT AUTO_INCREMENT NOT NULL,
    CONSTRAINT pk_room_type
		PRIMARY KEY (room_type_ID),
	type_description VARCHAR (25) 
);

CREATE TABLE room(
	room_ID INT AUTO_INCREMENT NOT NULL,
    CONSTRAINT pk_room
		PRIMARY KEY (room_ID),
	room_number INT NOT NULL,
    room_type_ID INT NOT NULL,
    ada_access CHAR(4) NOT NULL,
    standard_occupants INT NOT NULL,
    max_occupants INT NOT NULL,
    base_price DECIMAL (5,2) NOT NULL,
    extra_person DECIMAL(4,2) NULL,
    CONSTRAINT fk_room_type_ID
		FOREIGN KEY (room_type_ID)
        REFERENCES room_type(room_type_ID)
);

CREATE TABLE room_ammenities(
	room_ID INT NOT NULL,
    ammenities_ID INT NOT NULL,
    PRIMARY KEY pk_room_ammenities (room_ID, ammenities_ID),
    FOREIGN KEY fk_room_ammenities_room (room_ID)
		REFERENCES room(room_ID),
	FOREIGN KEY fk_room_ammenities_ammenities (ammenities_ID)
		REFERENCES ammenities(ammenities_ID)
);

CREATE TABLE reservation(
	reservationID INT AUTO_INCREMENT NOT NULL,
    CONSTRAINT pk_reservation
		PRIMARY KEY (reservationID),
	guest_ID INT NOT NULL,
	CONSTRAINT fk_guest_ID
		FOREIGN KEY (guest_ID)
        REFERENCES guest(guest_ID),
	room_ID INT NOT NULL,
    CONSTRAINT fk_room_ID
		FOREIGN KEY (room_ID)
        REFERENCES room(room_ID),
	adults INT,
    children INT,
    start_date DATE,
    end_date DATE,
    total DECIMAL (10,2)
);



