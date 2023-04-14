CREATE TABLE IF NOT EXISTS timeslots(
id INTEGER PRIMARY KEY ,
starttime TIME , 
endtime TIME 
);

INSERT INTO timeslots ( starttime, endtime) VALUES
('8:30:00', '9:20:00', 1),
( '9:30:00', '10:20:00', 2),
('2:30:00', '4:20:00', 3)
('09:00:00', '11:00:00', 4);
ON CONFLICT DO NOTHING;

CREATE TABLE rooms_new (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  number INTEGER,
  buildingid INTEGER REFERENCES buildings(id),
  seating INTEGER
);

INSERT INTO rooms_new (number, buildingid, seating)
SELECT number, buildingid, seating
FROM rooms;
DROP TABLE rooms;
ALTER TABLE rooms_new RENAME TO rooms;



CREATE TABLE IF NOT EXISTS schedule (
coursecode VARCHAR(10),
roomid INTEGER REFERENCES rooms(id),
timeslotid INTEGER REFERENCES timeslots(id),
UNIQUE (roomid, timeslotid)
);

INSERT INTO schedule (coursecode, roomid, timeslotid) VALUES
('MATH 126', 1, 1),
('CSE 373', 2, 1),
('ENGL 121', 3, 3);
('INFO330A', 2, 4);
