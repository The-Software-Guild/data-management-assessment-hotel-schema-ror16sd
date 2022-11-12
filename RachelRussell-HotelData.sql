USE rachelrussellhoteldb;
INSERT INTO guest (firstName, lastName, address, city, state, zip, phone) VALUES
	('Rachel','Russell','123 Main St.','Tallahassee','FL',32304,'(850)644-2874'),
    ('Mack','Simmer','379 Old Shore Street','Council Bluffs','IA',51501,'(291) 553-0508'),
    ('Bettyann','Seery','750 Wintergreen Dr.','Wasilla','AK',99654,'(478) 277-9632'),
    ('Duane','Cullison','9662 Foxrun Lane','Harlingen','TX',78552,'(308) 494-0198'),
    ('Karie','Yang','9378 W. Augusta Ave.','West Deptford','NJ',08096,'(214) 730-0298'),
	('Aurore','Lipton','762 Wild Rose Street','Saginaw','MI',48601,'(377) 507-0974'),
	('Zachery','Luechtefeld','7 Poplar Dr.','Arvada','CO',80003,'(814) 485-2615'),
	('Jeremiah','Pendergrass','70 Oakwood St.','Zion','IL',60099,'(279) 491-0960'),
	('Walter','Holaway','7556 Arrowhead St.','Cumberland','RI',02864,'(446) 396-6785'),
	('Wilfred','Vise','77 West Surrey Street','Oswego','NY',13126,'(834) 727-1001'),
	('Maritza','Tilton','939 Linda Rd.','Burke','VA',22015,'(446) 351-6860'),
	('Joleen','Tison','87 Queen St.','Drexel Hill','PA',19026,'(231) 893-2755');
    
INSERT INTO ammenities (ammenity_name) VALUES
	('Microwave'),
    ('Refrigerator'),
    ('Jacuzzi'),
    ('Oven');
    
INSERT INTO room_type (type_description) VALUES
	('Single'),
    ('Double'),
    ('Suite');
    
INSERT INTO room(room_number,room_type_ID,ada_access,standard_occupants,max_occupants,base_price,extra_person) VALUES
	(201, 2, 'No', 2,4, 199.99, 10.0),
	(202, 2,'Yes', 2, 4, 174.99, 10.0),
	(203, 2,'No', 2, 4, 199.99, 10.0),
	(204, 2, 'Yes', 2, 4, 174.99, 10.0),
	(205, 1, 'No', 2, 2, 174.99, null),
	(206, 1, 'Yes', 2, 2, 149.99, null),
	(207, 1, 'No', 2, 2, 174.99, null),
	(208, 1, 'Yes', 2, 2, 149.99, null),
	(301, 2, 'No', 2, 4, 199.99, 10.0),
	(302, 2, 'Yes', 2, 4, 174.99, 10.0),
	(303, 2, 'No', 2, 4, 199.99, 10.0),
	(304, 2, 'Yes', 2, 4, 174.99, 10.0),
	(305, 1, 'No', 2, 2, 174.99, null),
	(306, 1, 'Yes', 2, 2, 149.99, null),
	(307, 1, 'No', 2, 2, 174.99, null),
	(308, 1, 'Yes', 2, 2, 149.99, null),
	(401, 3, 'Yes', 3, 8, 399.99, 20.0),
	(402, 3, 'Yes', 3, 8, 399.99, 20.0);
    
INSERT INTO room_ammenities (room_ID, ammenities_ID) VALUES
	(1,1),
    (1,3),
    (2,2),
    (3,1),
    (3,3),
    (4,2),
    (5,1),
    (5,2),
    (5,3),
    (6,1),
    (6,2),
    (7,1),
    (7,2),
    (7,3),
	(8,1),
    (8,2),
    (9,1),
    (9,3),
    (10,2),
    (11,1),
    (11,3),
    (12,2),
    (13,1),
    (13,2),
    (13,3),
    (14,1),
	(14,2),
    (15,1),
    (15,2),
    (15,3),
    (16,1),
    (16,2),
    (17,1),
    (17,2),
    (17,4),
    (18,1),
    (18,2),
    (18,4);
    
INSERT INTO reservation(guest_ID,room_ID,adults,children,start_date,end_date, total) VALUES
	(2, 16, 1, 0, '2023-2-2', '2023-2-4', 299.98),
	(3, 3, 2, 1, '2023-2-5', '2023-2-10', 999.95),
	(4, 13, 2, 0, '2023-2-22', '2023-2-24', 349.98),
	(5, 1, 2, 2, '2023-3-6', '2023-3-7', 199.99),
	(1, 15, 1, 1, '2023-3-17', '2023-3-20', 524.97),
	(6, 10, 3, 0, '2023-3-18', '2023-3-23', 924.95),
	(7, 2, 2, 2, '2023-3-29', '2023-3-31', 349.98),
	(8, 12, 2, 0, '2023-3-31', '2023-4-5', 874.95),
	(9 , 9, 1, 0, '2023-4-9', '2023-4-13', 799.96),
	(10, 7, 1, 1, '2023-4-23', '2023-4-24', 174.99),
	(11, 17, 2, 4, '2023-5-30', '2023-6-2', 1199.97),
	(12, 6, 2, 0, '2023-6-10', '2023-6-14', 599.96),
	(12, 8, 1, 0, '2023-6-10', '2023-6-14', 599.96),
	(6, 12, 3, 0, '2023-6-17', '2023-6-18', 184.99),
	(1, 5, 2, 0, '2023-6-28', '2023-7-2', 699.96),
	(9, 4, 3, 1, '2023-7-13', '2023-7-14', 184.99),
	(10 , 17, 4, 2, '2023-7-18', '2023-7-21', 1259.97),
	(3, 11, 2, 1, '2023-7-28', '2023-7-29', 199.99),
	(3, 13, 1, 0, '2023-8-30', '2023-9-1', 349.98),
	(2, 8, 2, 0, '2023-9-16', '2023-9-17', 149.99),
	(5, 3, 2, 2, '2023-9-13', '2023-9-15', 399.98),
	(4, 17, 2, 2, '2023-11-22', '2023-11-25', 1199.97),
	(2, 6, 2, 0, '2023-11-22', '2023-11-25', 449.97),
	(2, 6, 2, 2, '2023-11-22', '2023-11-25', 599.97),
	(11, 10, 2, 0, '2023-12-24', '2023-12-28', 699.96);

    SELECT * FROM guest
    WHERE firstName = 'Jeremiah' AND lastName = 'Pendergrass';
    
    DELETE FROM reservation
    WHERE guest_ID = 8;
    
    DELETE from guest
    WHERE guest_ID = 8;