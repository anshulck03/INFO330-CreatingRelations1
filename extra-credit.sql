CREATE TABLE IF NOT EXISTS timeslots(
id INTEGER PRIMARY KEY ,
starttime TIME , 
endtime TIME 
);

INSERT INTO timeslots ( starttime, endtime) VALUES
('11:30:00', '12:20:00'),
( '8:30:00', '10:20:00'),
('3:30:00', '5:20:00')
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
('CSE 122', 1, 2),
('CSE 373', 2, 1),
('ENGL 121', 3, 3);
