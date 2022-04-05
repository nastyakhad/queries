create table users 
(
id int auto_increment, 
username unique, 
email unique  NOT null,
primary key (id) 
); 

insert into users (username, email)
values ('Ivan', 'Ivan@mail.com'); 

insert into users (username, email)
values ('Ruslan', 'Ruslan@mail.com');


create table posts 
(
id int auto_increment, 
body text, 
user_id  NOT null,
primary key (id),
foreign key (user_id) references users (id)
); 

insert into posts (body, user_id)
values ('Some words about English grammar', '1'); 

insert into posts (body, user_id)
values ('Differences between Do and Does', '2'); 

insert into posts (body, user_id)
values ('How can you teach English faster', '2'); 