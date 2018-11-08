drop table if exists users;
-- Don't use "Log" or "Logs" as name, its a reserved word.
drop table if exists log_entries;

drop table if exists rooms;

-- Timestamps will be created in java, then we will insert them here
-- time_out will need to be updated once the user leaves house,
-- we know the user hasn't left if time_in == time_out
create table log_entries (
    id          integer auto_increment primary key,
    userID      integer references users(id),
    fullName    varchar(255),
    roomID      integer references rooms(roomID),
    time_in     timestamp default current_timestamp,
    time_out    timestamp default current_timestamp 
);


create table users (
    id          integer primary key,
    firstName   varchar(255),
    lastName    varchar(255)
);

insert into users values(1111, "Marco", "Aguilar");
insert into users values(2222, "Ivan", "Richards");
insert into users values(3333, "Yonathan", "Gomez");
insert into users values(4444, "Armen", "Garcia");

create table rooms (
    roomID          integer primary key,
    room_name       varchar(255)
);

insert into rooms values (9999, "Main Entrance");
insert into rooms values (1234, "Master Bedroom");
insert into rooms values (5678, "Living Room");
insert into rooms values (9012, "Bathroom");
insert into rooms values (4321, "Guest Room",);



insert into log_entries (id, userID, fullName, roomID) values (1, 1111, "Marco Aguilar", 9999);
insert into log_entries (userID, fullName, roomID) values (3333, "Yonathan Gomez", 9999);
insert into log_entries (userID, fullName, roomID) values (3333, "Yonathan Gomez", 9012);



select * from users;
select * from log_entries;
select * from rooms;






-- *********************IMPORTANT****************************
-- Log_entries should include roomID column, this will let us know 
-- WHERE the user is entering/exiting from and WHEN.

-- It will also make Yon's job a little easier for finding data on each room