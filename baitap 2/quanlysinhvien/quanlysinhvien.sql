use quanlysinhvien;
select * from student;
select * from class;
select * from mark;
select * from subject;
-- tim name bắt đầu bằng từ h
select s.studentName from student s
where studentName like '%h%';
-- bat dau bang thang 12
select className, StartDate from class
where StartDate like '%-12-%'; 
-- diem tu 3 den 5
select SubName , credit from subject
where credit >= 3 and Credit <=5;
-- update student
update student
set ClassId = 2
where StudentName = 'Hung';
-- hien thi
SELECT  StudentName, SubName,Mark 
FROM mark,student,`subject`
WHERE student.studentId=mark.studentId and `subject`.SubId=mark.SubId
ORDER BY mark DESC,StudentName ASC;

