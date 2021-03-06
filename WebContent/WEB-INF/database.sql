create table books
(
  id     number(5)  primary key,
  title  varchar2(50) not null,
  author varchar2(50),
  price  number(5)
);

create sequence book_id_seq start with 1 nocache;

insert into books values(book_id_seq.nextval, 'Java Complete Reference',
  'Herbert Schildt', 750);
  
insert into books values(book_id_seq.nextval, 'The C Programming Language',
  'Dennis Ritchie',350);
  
insert into books values(book_id_seq.nextval, 'Oracle Database SQL',
  'Jason Price',850);    
 
commit; 
