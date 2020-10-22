create database library_book;
create table students(
student_number int primary key,
student_name varchar(50),
address varchar(255),
email varchar(50),
image varchar(200)
);

create table categories(
id_cg int primary key,
name varchar(50)
);

create table books(
id_book int primary key,
name_book varchar(50),
type_book varchar(50),
fk_id_cg int
);

create table BorrowOrder(
fk_student_number int,
fk_id_book int,
time_borrow date
);

alter table books
add foreign key (fk_id_cg) references categories(id_cg);

alter table BorrowOrder
add foreign key (fk_student_number) references students(student_number),
add foreign key (fk_id_book) references books(id_book),
add primary key (fk_student_number, fk_id_book);
insert into students (student_number, student_name, address, email, image) 
values(1,'Hung','Bình thai 1','hung@gmail.com','image'); 
insert into books (id_book ,name_book, type_book, fk_id_cg) 
values(1, 'khong gian', 'sieu nhien', 1); 