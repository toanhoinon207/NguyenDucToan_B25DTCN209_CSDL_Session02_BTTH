create database book_management;
use book_management;

create table book(
	bookId char(5) primary key,
    bookName varchar(200) not null,
    quantity int check (quantity >= 0),
    rentPrice decimal(10,2) default 5000
);

alter table book
add entryDate date;

create table borrow_books(
	borrowId int auto_increment primary key,
    borrowDate date default (current_date),
    bookId char(5) not null,
    foreign key (bookId) references book(bookId)
);