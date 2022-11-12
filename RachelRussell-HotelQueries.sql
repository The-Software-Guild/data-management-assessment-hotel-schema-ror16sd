USE rachelrussellhoteldb;
-- 1.Write a query that returns a list of reservations that end in July 2023, including the name of the guest, the room number(s), and the reservation dates.

SELECT guest.firstName, guest.lastName, room.room_number, start_date, end_date FROM reservation
INNER JOIN guest ON reservation.guest_ID = guest.guest_ID
INNER JOIN room ON reservation.room_ID = room.room_ID
WHERE MONTH(end_date) = 7 AND YEAR(end_date) = 2023;

-- firstName	lastName	room_number	start_date	end_date
-- Rachel	Russell	205	2023-06-28	2023-07-02
-- Bettyann	Seery	303	2023-07-28	2023-07-29
-- Walter	Holaway	204	2023-07-13	2023-07-14
-- Wilfred	Vise	401	2023-07-18	2023-07-21

-- 2.Write a query that returns a list of all reservations for rooms with a jacuzzi, displaying the guest's name, the room number, and the dates of the reservation.
SELECT guest.firstName, guest.lastName, room.room_number, start_date, end_date FROM reservation
INNER JOIN guest ON reservation.guest_ID = guest.guest_ID
INNER JOIN room ON reservation.room_ID = room.room_ID
INNER JOIN room_ammenities ON room_ammenities.room_ID = room.room_ID AND room_ammenities.ammenities_ID = 3;

# firstName	lastName	room_number	start_date	end_date
-- Karie	Yang	201	2023-03-06	2023-03-07
-- Bettyann	Seery	203	2023-02-05	2023-02-10
-- Karie	Yang	203	2023-09-13	2023-09-15
-- Rachel	Russell	205	2023-06-28	2023-07-02
-- Wilfred	Vise	207	2023-04-23	2023-04-24
-- Walter	Holaway	301	2023-04-09	2023-04-13
-- Bettyann	Seery	303	2023-07-28	2023-07-29
-- Duane	Cullison	305	2023-02-22	2023-02-24
-- Bettyann	Seery	305	2023-08-30	2023-09-01
-- Rachel	Russell	307	2023-03-17	2023-03-20

-- 3.Write a query that returns all the rooms reserved for a specific guest, including the guest's name, the room(s) reserved, the starting date of the reservation, and how many people were included in the reservation. (Choose a guest's name from the existing data.)
SELECT guest.firstName, guest.lastName, (adults + children) as total_guests, start_date FROM reservation
INNER JOIN guest ON reservation.guest_ID = guest.guest_ID
WHERE guest.guest_ID = 2;

# firstName	lastName	total_guests	start_date
-- Mack	Simmer	1	2023-02-02
-- Mack	Simmer	2	2023-09-16
-- Mack	Simmer	2	2023-11-22
-- Mack	Simmer	4	2023-11-22

-- 4.Write a query that returns a list of rooms, reservation ID, and per-room cost for each reservation. The results should include all rooms, whether or not there is a reservation associated with the room.
SELECT room_number, reservation.reservationID, total FROM room
LEFT OUTER JOIN reservation ON room.room_ID = reservation.room_ID;

-- room_number, reservationID, total
-- 01, 4, 199.99
-- 202, 7, 349.98
-- 203, 2, 999.95
-- 203, 21, 399.98
-- 204, 16, 184.99
-- 05, 15, 699.96
-- 206, 12, 599.96
-- 206, 23, 449.97
-- 206, 24, 599.97
-- 207, 10, 174.99
-- 208, 13, 599.96
-- 208, 20, 149.99
-- 301, 9, 799.96
-- 302, 6, 924.95
-- 302, 25, 699.96
-- 303, 18, 199.99
-- 304, 14, 184.99
-- 305, 3, 349.98
-- 305, 19, 349.98
-- 306, null, null 
-- 307, 5, 524.97
-- 308, 1, 299.98
-- 401, 11, 1199.97
-- 401, 17, 1259.97
-- 401, 22, 1199.97
-- 402, null,null 

-- 5. Write a query that returns all rooms with a capacity of three or more and that are reserved on any date in April 2023.
SELECT room.room_number from reservation
INNER JOIN room ON reservation.room_ID = room.room_ID
WHERE max_occupants >= 3 
AND MONTH(start_date) = 4 AND YEAR(start_date) = 2023 
OR MONTH(end_date) = 4 AND YEAR(end_date) = 2023;

-- room_number
-- 207
-- 301

-- 6.Write a query that returns a list of all guest names and the number of reservations per guest, sorted starting with the guest with the most reservations and then by the guest's last name.
SELECT guest.firstName, guest.lastName, 
COUNT(reservationID) as total_reservations FROM reservation
INNER JOIN guest ON reservation.guest_ID = guest.guest_ID
GROUP BY reservation.guest_ID
ORDER BY total_reservations DESC, guest.lastName ASC;

-- firstName	lastName	total_reservations
-- Mack	Simmer	4
-- Bettyann	Seery	3
-- Duane	Cullison	2
-- Walter	Holaway	2
-- Aurore	Lipton	2
-- Rachel	Russell	2
-- Maritza	Tilton	2
-- Joleen	Tison	2
-- Wilfred	Vise	2
-- Karie	Yang	2
-- Zachery	Luechtefeld	1

-- 7.Write a query that displays the name, address, and phone number of a guest based on their phone number. (Choose a phone number from the existing data.)
SELECT firstName, lastName, address FROM guest
WHERE phone = '(446) 351-6860';
