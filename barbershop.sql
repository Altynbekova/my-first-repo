create database barbershop

create table Barbers (
BarberId int identity primary key,
Fio nvarchar(50) not null,
Gender bit,
Tel nvarchar(50),
Email nvarchar(50),
Birthdate date,
EmploymentDate date,
PositionId int,
constraint FK_Barbers_Positions foreign key (PositionId) references Positions(PositionId)
)

create table Positions(
PositionId int identity primary key,
Name nvarchar(25)
)

insert into Positions values ('chief'), 
							('senior'),
							('junior');
select Fio from Barbers;
select * from Barbers b join Positions p
on b.PositionId=p.PositionId
where p.Name='senior';



