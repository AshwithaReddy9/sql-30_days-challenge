//✅ Solve:
Show all students not equal to age 18.

Get names of students scoring >= 80.

Show all students ordered by marks ascending.

Show students age < 20 and marks > 75, sorted by age descending.

Show top 3 students by marks.//

create table student(name varchar(9),age INT,marks INT);
desc student;
select age from student where age!=18
select name from student where marks >=80;
select name from student order by marks ASC;
select age,name from student where age<20 and marks>75;
select * from student order by marks Desc;
limit 3;
