USE CarRepair
GO

DBCC CHECKIDENT ('[Cars]', RESEED,1)
GO
DBCC CHECKIDENT ('[Clients]', RESEED,1)
GO
DBCC CHECKIDENT ('[Employee]', RESEED,1)
GO
DBCC CHECKIDENT ('[Job]', RESEED,1)
GO
DBCC CHECKIDENT ('[ProvidedServices]', RESEED,1)
GO
DBCC CHECKIDENT ('[Provider]', RESEED,1)
GO
DBCC CHECKIDENT ('[Schedule]', RESEED,1)
GO
DBCC CHECKIDENT ('[ScheduleOfEmployee]', RESEED,1)
GO
DBCC CHECKIDENT ('[ServiceType]', RESEED,1)
GO
DBCC CHECKIDENT ('[SpareParts]', RESEED,1)

--INSERT table_name
--	(,,)
--VALUES
--	(,,,)


--Clients
INSERT Clients (Surname, Name, Patronymic, Discount)
VALUES (N'��������', N'�����', N'��������', 0)

INSERT Clients (Surname, Name, Patronymic, Discount)
VALUES (N'���������', N'������', N'��������', 0)

INSERT Clients (Surname, Name, Patronymic, Discount)
VALUES (N'������', N'���������', N'���������', 15)

INSERT Clients (Surname, Name, Patronymic, Discount)
VALUES (N'��������', N'��������', N'����������', 7)


--Cars
INSERT Cars(IDClient, NCar, Model, [Year], Color)
VALUES (1, N'�375��', N'Volvo', 1998, N'White')

INSERT Cars(IDClient, NCar, Model, [Year], Color)
VALUES (1, N'�627��', N'Audi', 2001, N'Geen')

INSERT Cars(IDClient, NCar, Model, [Year], Color)
VALUES (2, N'�337��', N'Lada', 2018, N'Grey')

INSERT Cars(IDClient, NCar, Model, [Year], Color)
VALUES (3, N'�333��' , N'Lada', 1998, N'Black')

INSERT Cars(IDClient, NCar, Model, [Year], Color)
VALUES (4, N'�627��', N'Man', 2003, N'Blue')


--ServiceType
INSERT ServiceType(Title, Price)
VALUES (N'������ �������� ���������', 3500)

INSERT ServiceType(Title, Price)
VALUES (N'������ ���������� �������', 800)

INSERT ServiceType(Title, Price)
VALUES (N'������ ���������� �������', 300)

INSERT ServiceType(Title, Price)
VALUES (N'������ �������', 2000)

INSERT ServiceType(Title, Price)
VALUES (N'�������� ������������', 900)

INSERT ServiceType(Title, Price)
VALUES (N'������ ����� ���', 1900)


--Providers
INSERT Provider(Name, Tel)
VALUES (N'BMW parts', 79626195740)

INSERT Provider(Name, Tel)
VALUES (N'Lada parts', 79626195740)

INSERT Provider(Name, Tel)
VALUES (N'Chinese CHERRY', 219626195740)


--Spare Parts
INSERT SpareParts(Title, Articul, Brand, Price, IDProvider)
VALUES (N'Oil pump', 16321, 'DIY inc', 8000, 1)

INSERT SpareParts(Title, Articul, Brand, Price, IDProvider)
VALUES (N'Oil tank', 16324, 'Kakayatokompaniya', 2500, 2)

INSERT SpareParts(Title, Articul, Brand, Price, IDProvider)
VALUES (N'��������� �������', 176321, 'Lada', 1400, 1)

INSERT SpareParts(Title, Articul, Brand, Price, IDProvider)
VALUES (N'���� ���������', 97721, 'Kakayatokompaniya', 658, 3)

INSERT SpareParts(Title, Articul, Brand, Price, IDProvider)
VALUES (N'������� �����', 16322, 'Kakayatokompaniya', 130, 3)


--Employee
INSERT Employee(Surname, Name, Patronymic, BirthDate, PassportNumber, INN, SNILS, Telephone)
--VALUES (N'�������', N'������', '��������', '16.10.1999', 134597641, 123456, 1349893345, 79626195741)
VALUES (N'�������', N'������', '��������', CONVERT(datetime, '16.10.1999', 104), 134597641, 123456, 1349893345, 79626195741)
--CONVERT(varchar | datetime, getdate(), 4)

INSERT Employee(Surname, Name, Patronymic, BirthDate, PassportNumber, INN, SNILS, Telephone)
VALUES (N'��������', N'�����', '����������', CONVERT(datetime, '20.12.1989', 104), 134597642, 123456, 1349893345, 79626195744)

INSERT Employee(Surname, Name, Patronymic, BirthDate, PassportNumber, INN, SNILS, Telephone)
VALUES (N'��������', N'���������', '������������', CONVERT(datetime, '29.01.1963', 104), 1345976412, 12345633, 134989334556, 79626195743)

INSERT Employee(Surname, Name, Patronymic, BirthDate, PassportNumber, INN, SNILS, Telephone)
VALUES (N'���������', N'������', '����������', CONVERT(datetime, '13.10.1985', 104), 1345976411, 1234561, 13498933451, 79626195746)

INSERT Employee(Surname, Name, Patronymic, BirthDate, PassportNumber, INN, SNILS, Telephone)
VALUES (N'������', N'����', '��������', CONVERT(datetime, '16.08.1987', 104), 1345976413, 1234563, 13498933453, 79626195747)


--Job
INSERT Job(IDEmployee, IDPart, IDService)
VALUES (1, 3, 1)

INSERT Job(IDEmployee, IDPart, IDService)
VALUES (2, 3, 1)

INSERT Job(IDEmployee, IDPart, IDService)
VALUES (1, 3, 1)

INSERT Job(IDEmployee, IDPart, IDService)
VALUES (3, 3, 3)


--Schedule
INSERT Schedule([DayOfWeek], StartTime, FinishTime)
VALUES (1, '8:30', '14:45')

INSERT Schedule([DayOfWeek], StartTime, FinishTime)
VALUES (1, '14:45', '19:00')

INSERT Schedule([DayOfWeek], StartTime, FinishTime)
VALUES (2, '8:30', '14:45')

INSERT Schedule([DayOfWeek], StartTime, FinishTime)
VALUES (2, '14:45', '19:00')

INSERT Schedule([DayOfWeek], StartTime, FinishTime)
VALUES (3, '8:30', '14:45')

INSERT Schedule([DayOfWeek], StartTime, FinishTime)
VALUES (3, '14:45', '19:00')

INSERT Schedule([DayOfWeek], StartTime, FinishTime)
VALUES (4, '8:30', '14:45')

INSERT Schedule([DayOfWeek], StartTime, FinishTime)
VALUES (4, '14:45', '19:00')

INSERT Schedule([DayOfWeek], StartTime, FinishTime)
VALUES (5, '8:30', '14:45')

INSERT Schedule([DayOfWeek], StartTime, FinishTime)
VALUES (5, '14:45', '19:00')

INSERT Schedule([DayOfWeek], StartTime, FinishTime)
VALUES (6, '8:30', '14:45')

INSERT Schedule([DayOfWeek], StartTime, FinishTime)
VALUES (6, '14:45', '19:00')

INSERT Schedule([DayOfWeek], StartTime, FinishTime)
VALUES (7, '8:30', '14:45')

INSERT Schedule([DayOfWeek], StartTime, FinishTime)
VALUES (7, '14:45', '19:00')


--Schedule of employee
--������ �������� 5 ���� � ������
--Worker �1
INSERT ScheduleOfEmployee(IDNote, IDShedEmpExpiration, IDEmployee)
VALUES (1, CONVERT(datetime, '13.11.2022', 104), 1)

INSERT ScheduleOfEmployee(IDNote, IDShedEmpExpiration, IDEmployee)
VALUES (3, CONVERT(datetime, '13.11.2022', 104), 1)

INSERT ScheduleOfEmployee(IDNote, IDShedEmpExpiration, IDEmployee)
VALUES (5, CONVERT(datetime, '13.11.2022', 104), 1)

INSERT ScheduleOfEmployee(IDNote, IDShedEmpExpiration, IDEmployee)
VALUES (7, CONVERT(datetime, '13.11.2022', 104), 1)

INSERT ScheduleOfEmployee(IDNote, IDShedEmpExpiration, IDEmployee)
VALUES (9, CONVERT(datetime, '13.11.2022', 104), 1)

--Worker �2
INSERT ScheduleOfEmployee(IDNote, IDShedEmpExpiration, IDEmployee)
VALUES (1, CONVERT(datetime, '13.11.2022', 104), 2)

INSERT ScheduleOfEmployee(IDNote, IDShedEmpExpiration, IDEmployee)
VALUES (3, CONVERT(datetime, '13.11.2022', 104), 2)

INSERT ScheduleOfEmployee(IDNote, IDShedEmpExpiration, IDEmployee)
VALUES (5, CONVERT(datetime, '13.11.2022', 104), 2)

INSERT ScheduleOfEmployee(IDNote, IDShedEmpExpiration, IDEmployee)
VALUES (7, CONVERT(datetime, '13.11.2022', 104), 2)

INSERT ScheduleOfEmployee(IDNote, IDShedEmpExpiration, IDEmployee)
VALUES (9, CONVERT(datetime, '13.11.2022', 104), 2)

--Worker �3
INSERT ScheduleOfEmployee(IDNote, IDShedEmpExpiration, IDEmployee)
VALUES (1, CONVERT(datetime, '13.11.2022', 104), 3)

INSERT ScheduleOfEmployee(IDNote, IDShedEmpExpiration, IDEmployee)
VALUES (2, CONVERT(datetime, '13.11.2022', 104), 3)

INSERT ScheduleOfEmployee(IDNote, IDShedEmpExpiration, IDEmployee)
VALUES (3, CONVERT(datetime, '13.11.2022', 104), 3)

INSERT ScheduleOfEmployee(IDNote, IDShedEmpExpiration, IDEmployee)
VALUES (4, CONVERT(datetime, '13.11.2022', 104), 3)

INSERT ScheduleOfEmployee(IDNote, IDShedEmpExpiration, IDEmployee)
VALUES (5, CONVERT(datetime, '13.11.2022', 104), 3)

--Worker �4
INSERT ScheduleOfEmployee(IDNote, IDShedEmpExpiration, IDEmployee)
VALUES (2, CONVERT(datetime, '13.11.2022', 104), 4)

INSERT ScheduleOfEmployee(IDNote, IDShedEmpExpiration, IDEmployee)
VALUES (4, CONVERT(datetime, '13.11.2022', 104), 4)

INSERT ScheduleOfEmployee(IDNote, IDShedEmpExpiration, IDEmployee)
VALUES (6, CONVERT(datetime, '13.11.2022', 104), 4)

INSERT ScheduleOfEmployee(IDNote, IDShedEmpExpiration, IDEmployee)
VALUES (8, CONVERT(datetime, '13.11.2022', 104), 4)

INSERT ScheduleOfEmployee(IDNote, IDShedEmpExpiration, IDEmployee)
VALUES (9, CONVERT(datetime, '13.11.2022', 104), 4)

--Worker �5
INSERT ScheduleOfEmployee(IDNote, IDShedEmpExpiration, IDEmployee)
VALUES (1, CONVERT(datetime, '13.11.2022', 104), 5)

INSERT ScheduleOfEmployee(IDNote, IDShedEmpExpiration, IDEmployee)
VALUES (3, CONVERT(datetime, '13.11.2022', 104), 5)

INSERT ScheduleOfEmployee(IDNote, IDShedEmpExpiration, IDEmployee)
VALUES (5, CONVERT(datetime, '13.11.2022', 104), 5)

INSERT ScheduleOfEmployee(IDNote, IDShedEmpExpiration, IDEmployee)
VALUES (7, CONVERT(datetime, '13.11.2022', 104), 5)

INSERT ScheduleOfEmployee(IDNote, IDShedEmpExpiration, IDEmployee)
VALUES (9, CONVERT(datetime, '13.11.2022', 104), 5)

--Provided Services
INSERT ProvidedServices(IDJob, IDContract)
VALUES (1, 1)

INSERT ProvidedServices(IDJob, IDContract)
VALUES (2, 2)

INSERT ProvidedServices(IDJob, IDContract)
VALUES (3, 3)

INSERT ProvidedServices(IDJob, IDContract)
VALUES (4, 4)

--Contract
--Data - ��� ���� ���������, startdate - ���� ������ �����
INSERT [Contract](IDClient, Data, TechnicalPassport, StartDateContract, FinishDateContract, TotalSum)
VALUES (1, CONVERT(datetime, '17.08.2013', 104), '1566469879331', CONVERT(datetime, '20.08.2013', 104), CONVERT(datetime, '20.09.2013', 104), 10000)

INSERT [Contract](IDClient, Data, TechnicalPassport, StartDateContract, FinishDateContract, TotalSum)
VALUES (2, CONVERT(datetime, '12.05.2016', 104), '1566469879331', CONVERT(datetime, '13.05.2016', 104), CONVERT(datetime, '20.05.2016', 104), 18320)

INSERT [Contract](IDClient, Data, TechnicalPassport, StartDateContract, FinishDateContract, TotalSum)
VALUES (3, CONVERT(datetime, '17.08.2017', 104), '9452170101587', CONVERT(datetime, '20.08.2017', 104), CONVERT(datetime, '20.09.2017', 104), 1500)

INSERT [Contract](IDClient, Data, TechnicalPassport, StartDateContract, FinishDateContract, TotalSum)
VALUES (4, CONVERT(datetime, '17.08.2017', 104), '84531092131', CONVERT(datetime, '20.08.2017', 104), CONVERT(datetime, '20.09.2017', 104), 9600)