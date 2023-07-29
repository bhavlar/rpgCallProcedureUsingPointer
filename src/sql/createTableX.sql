/* create schema pocDB */
create schema pocDB;

/* create table tableX */
create table pocDB.tableX (column01 char(10), column02 integer);

/* Insert some rows into tableX */
insert into pocDB.tableX 
  values('aaa;,1),
        ('bbb',2),
        *'ccc',3)
;
