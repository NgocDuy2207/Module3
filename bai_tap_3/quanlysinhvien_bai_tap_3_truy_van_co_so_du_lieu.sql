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
SELECT  StudentName, SubName, Mark 
FROM mark,student,subject
WHERE student.studentId=mark.studentId and subject.SubId=mark.SubId
ORDER BY mark DESC,StudentName ASC;
-- thuc hanh cac cau lenh truy van
-- tính tổng điểm
select s.studentId, s.studentName, avg(mark)
from student s join mark m on s.StudentId = m.StudentId
group by StudentId, StudentName;
-- hien thi diem hon 9
select s.studentId, s.studentName, avg(mark)
from student s join mark m on s.StudentId = m.StudentId
group by StudentId, StudentName 
having avg(mark) > 5;
-- hien thi diem lon nhat
select s.studentId, s.studentName, avg(mark)
from student s join mark m on s.StudentId = m.StudentId
group by StudentId, StudentName 
HAVING AVG(Mark) >= ALL 
(SELECT AVG(Mark) FROM Mark GROUP BY Mark.StudentId);
select Address,StudentName, count(StudentId) as 'so luong hoc vien'
from student
group by Address, StudentName;
select Address, count(StudentId) as 'so luong hoc vien'
from student
group by Address
having count(StudentId) >=3;
insert into student
values(10,'Dung','Da Nang','09024',1,2);

select * from student, mark
where student.StudentId = mark.StudentId;
select * from subject, class
where subject.SubId = class.ClassID;

-- bai tap truy van co so du lieu
use quanlysinhvien;
-- yeu cau 1
select * from subject
having Credit >= all (select Credit from subject);
-- yeu cau 2

select subject.SubId, subject.SubName, subject.Credit, subject.`Status` , Mark
from subject, mark
where mark.SubId = subject.SubId
having mark.Mark >= all (select Mark from mark);

-- yeu cau 3
select s.studentID, s.studentName, s.address, s.phone, s.`status`, s.classid, avg(mark) as 'diem trung binh'
from student s join mark m on s.StudentId = m.StudentId
group by s.StudentId, s.StudentName
-- having avg(mark.Mark);


