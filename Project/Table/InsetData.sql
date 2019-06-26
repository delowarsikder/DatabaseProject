-- ok_1.insert value in area table
INSERT INTO area
VALUES
	( 101, 'Khulna', 2500, 'teligati' );
INSERT INTO area
VALUES
	( 102, 'Barishal', 1500, 'Bgong' );
INSERT INTO area
VALUES
	( 103, 'Bhola', 1200, 'mopura' );
INSERT INTO area
VALUES
	( 104, 'Patuakhali', 1300, 'Bauphal' );
INSERT INTO area
VALUES
	( 105, 'Jalokati', 1000, 'jalokati' );
	
-- ok_2.insert value in donor table
INSERT INTO donor
VALUES
	( 201, 'Delowar', 'Sikder', 'KUET' );
INSERT INTO donor
VALUES
	( 202, 'Habibur', 'Rahman', 'patukhali' );
	INSERT INTO donor
VALUES
	( 203, 'Yeasin', 'alam', 'Barishal' );
	INSERT INTO donor
VALUES
	( 204, 'Istiak', 'Rahman', 'KUET' );
	INSERT INTO donor
VALUES
	( 205, 'Momim', 'talukder', 'Modupur' );
	INSERT INTO donor
VALUES
	( 206, 'Naem', 'uddin', 'pirojpur' );
	
-- ok_3.insert value goods table
INSERT INTO goods
VALUES
	( 301, 'rice', 200.20 );
INSERT INTO goods
VALUES
	( 302, 'medicin', 300.00 );
	INSERT INTO goods
VALUES
	( 303, 'wheat', 100.00 );
	INSERT INTO goods
VALUES
	( 304, 'oil', 250.50 );
	INSERT INTO goods
VALUES
	( 305, 'pulse', 100.00 );
	INSERT INTO goods
VALUES
	( 306, 'flour', 350.00 );
-- ok_4.insert value in victim table
INSERT INTO victim
VALUES
	( 401, 'abc', 'xyz', 101 );
INSERT INTO victim
VALUES
	( 402, 'anis', 'islam', 102 );
INSERT INTO victim
VALUES
	( 403, 'jahir', 'hossen', 104 );
INSERT INTO victim
VALUES
	( 404, 'ariful', 'islam', 103 );
	INSERT INTO victim
VALUES
	( 405, 'sakib', 'hasan', 102 );
-- ok_05.insert value in donation table

INSERT INTO donation
VALUES
	( 502, SYSDATE, 50.50, 305, 204);
INSERT INTO donation
VALUES
	( 503, SYSDATE, 150.00, 302, 203 );
	INSERT INTO donation
VALUES
	( 504, SYSDATE, 200.00, 303, 201 );
	INSERT INTO donation
VALUES
	( 505, SYSDATE, 70.00, 304, 202 );
	
	
-- ok_6.insert value in Relief table
INSERT INTO relief
VALUES
	( 601, TO_date( 'Nov-25,2017', 'Mon-DD,YYYY' ), 12.5, 401, 301 );
INSERT INTO relief
VALUES
	( 602, TO_date( 'Nov-23,2017', 'Mon-DD,YYYY' ), 20.5, 401, 304);
INSERT INTO relief
VALUES
	( 603, TO_date( 'Nov-22,2017', 'Mon-DD,YYYY' ), 25.25, 402, 302);
	INSERT INTO relief
VALUES
	( 604, SYSDATE, 10.0, 403, 301 );
	INSERT INTO relief
VALUES
	( 605, SYSDATE, 30.0, 404, 303 );
	
	
	
-- ok_07.insert value in job table
INSERT INTO job
VALUES
	( 701, 'junior_volunteer' );
INSERT INTO job
VALUES
	( 702, 'senior_volunteer' );
	INSERT INTO job
VALUES
	( 703, 'Secretary' );
	INSERT INTO job
VALUES
	( 704, 'Senior_manager' );
	INSERT INTO job
VALUES
	( 705, 'president' );
	
	
	
-- ok_08.insert value in worker table

INSERT INTO worker
VALUES
	( 801, 'Kamrul', 'Islam', 'KUET', '123', SYSDATE, 101, 701 );
	
INSERT INTO worker
VALUES
	( 802, 'Najmul', 'Islam', 'KUET', '256', TO_date( 'Nov-20,2017', 'Mon-DD,YYYY' ), 103, 701 );
INSERT INTO worker
VALUES
	( 803, 'Najmul', 'Uddin', 'JUST', '556', TO_date( 'Nov-21,2017', 'Mon-DD,YYYY' ), 102, 705);
INSERT INTO worker
VALUES
	( 804, 'Labib', 'Islam', 'PUST', '956', TO_date( 'Nov-22,2017', 'Mon-DD,YYYY' ), 101, 702 );
	
	
commit;