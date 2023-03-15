CREATE TABLE Author(
AuthorID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
aut_firstName varchar(20),
aut_lastName varchar(20),
)

CREATE TABLE Supervisor(
SupervisorID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
sup_gender varchar(10),
sup_firstName varchar(20),
sup_lastName varchar(20),
)

CREATE TABLE University(
UniversityID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
UniversityName varchar(50)
)

CREATE TABLE Institute(
InstituteID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
InstituteName varchar(100),
inst_UniversityID int NOT NULL,
FOREIGN KEY (inst_UniversityID) REFERENCES University(UniversityID),
)

CREATE TABLE [Language](
LanguageID nvarchar(5) NOT NULL PRIMARY KEY,
LangName varchar(15),
)

CREATE TABLE Subjects(
SubjectID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
SubjectName char(100),
)

CREATE TABLE Keywords(
KeywordID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
Keyword varchar(255)
)

CREATE TABLE Thesis(
ThesisID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
t_title varchar(255), 
t_abstract varchar(255),
t_LanguageID nvarchar(5) NOT NULL,
t_AuthorID int,
t_year smallint NOT NULL,
t_UniversityID int NOT NULL,
t_InstituteID int NOT NULL,
t_numOfPages int NOT NULL,
t_subDate DATE NOT NULL,
t_KeywordID int NOT NULL,
t_SubjectID int NOT NULL,
t_type varchar(20) NOT NULL

FOREIGN KEY (t_LanguageID) REFERENCES [Language](LanguageID),
FOREIGN KEY (t_AuthorID) REFERENCES Author(AuthorID),
FOREIGN KEY (t_UniversityID) REFERENCES University(UniversityID),
FOREIGN KEY (t_InstituteID)  REFERENCES Institute(InstituteID),
FOREIGN KEY (t_KeywordID)  REFERENCES Keywords(KeywordID),
FOREIGN KEY (t_SubjectID)  REFERENCES Subjects(SubjectID),
)

CREATE TABLE Grade(
ThesisGrade int NOT NULL,
g_ThesisID int NOT NULL,
g_SupervisorID int NOT NULL,
FOREIGN KEY (g_ThesisID) REFERENCES Thesis(ThesisID),
FOREIGN KEY (g_SupervisorID)  REFERENCES Supervisor(SupervisorID)
)


INSERT INTO Author(aut_firstName, aut_lastName)
VALUES('Yiğit', 'Sıktaş') 

INSERT INTO Author(aut_firstName, aut_lastName)
VALUES('Süleyman Kaan', 'Aslanbaş') 

INSERT INTO Author(aut_firstName, aut_lastName)
VALUES('Peri', 'Tevfik')

INSERT INTO Author(aut_firstName, aut_lastName)
VALUES('Ece', 'Gülşen')

INSERT INTO Author(aut_firstName, aut_lastName)
VALUES('Yiğit', 'Arda')

INSERT INTO Author(aut_firstName, aut_lastName)
VALUES('Serkan', 'Cihangir')

INSERT INTO Author(aut_firstName, aut_lastName)
VALUES('Ayaz', 'Timuçin')



INSERT INTO Supervisor(sup_gender, sup_firstName, sup_lastName)
VALUES('Ms.','Ayten', 'Berat')

INSERT INTO Supervisor(sup_gender, sup_firstName, sup_lastName)
VALUES('Ms.','Feriha', 'Didem')

INSERT INTO Supervisor(sup_gender, sup_firstName, sup_lastName)
VALUES('Ms.','Esila', 'Bayram')

INSERT INTO Supervisor(sup_gender, sup_firstName, sup_lastName)
VALUES('Mr.','Osman', 'Devrim')

INSERT INTO Supervisor(sup_gender, sup_firstName, sup_lastName)
VALUES('Mr.','Bünyamin', 'Öykü')

INSERT INTO Supervisor(sup_gender, sup_firstName, sup_lastName)
VALUES('Mr.','Kubilay', 'Serhat')



INSERT INTO University(UniversityName)
VALUES	('Maltepe Üniversitesi')

INSERT INTO University(UniversityName)
VALUES	('Marmara Üniversitesi')

INSERT INTO University(UniversityName)
VALUES	('İstanbul Üniversitesi')

INSERT INTO University(UniversityName)
VALUES	('Koç Üniversitesi')
		
INSERT INTO University(UniversityName)
VALUES	('Yeditepe Üniversitesi')



INSERT INTO Institute(InstituteName, inst_UniversityID)
VALUES	('Fen Bilimleri Enstitüsü', 1)


INSERT INTO Institute(InstituteName, inst_UniversityID)
VALUES	('Güzel Sanatlar Enstitüsü', 2)

		
INSERT INTO Institute(InstituteName, inst_UniversityID)
VALUES	('Sosyal Bilimler Enstitüsü', 3)


INSERT INTO Institute(InstituteName, inst_UniversityID)
VALUES	('Sağlık Bilimleri Enstitüsü', 4)

INSERT INTO [Language](LanguageID, LangName)
VALUES	('TUR','Turkish'),
		('ENG','English'),
		('RUS','Russian'),
		('SPA','Spanish'),
		('FRE','French'),
		('GER','German')

INSERT INTO Keywords(Keyword)
VALUES	('term'),
		('low-carb low-fat'),
		('aztec'),
		('self-driving'),
		('financial high-tech'),
		('user interface'),
		('jazz music')

INSERT INTO Subjects(SubjectName)
VALUES	('Termodynamic'),
		('Low-carbohydrate vs. low-fat diets'),
		('Aztec empire and its architecture'),
		('Self-driving automobiles'),
		('Models of financial management of high-tech projects'),
		('User interface modernization'),
		('Jazz Music of the 21st century')                                                                     


INSERT INTO Thesis(t_type, t_title, t_abstract, t_year, t_numOfPages, t_subDate, t_AuthorID, t_SubjectID, t_UniversityID, t_InstituteID, t_LanguageID, t_KeywordID, t_SupervisorID)
VALUES	('Doctorate', 'Termodynamic', 'Lorem Ipsum', '2001', 187, '11-01-2001', 1, 1, 1, 1, 'TUR', 1, 1)

INSERT INTO Thesis(t_type, t_title, t_abstract, t_year, t_numOfPages, t_subDate, t_AuthorID, t_SubjectID, t_UniversityID, t_InstituteID, t_LanguageID, t_KeywordID)
VALUES	('Master', 'Jazz Music of the 21st century', 'Lorem Ipsum', '2011', 847, '03-21-2011', 2, 5, 3, 2, 'ENG', 1)

INSERT INTO Thesis(t_type, t_title, t_abstract, t_year, t_numOfPages, t_subDate, t_AuthorID, t_SubjectID, t_UniversityID, t_InstituteID, t_LanguageID, t_KeywordID)
VALUES	('Master', 'Self-driving automobiles', 'Lorem Ipsum', '2009', 847, '07-02-2009', 3, 3, 2, 1, 'RUS', 1)

INSERT INTO Grade(ThesisGrade, g_ThesisID, g_SupervisorID)
VALUES	(81, 1, 1),
		(57, 3, 4),
		(61, 2, 3)



SELECT t.ThesisID, sub.SubjectName, aut.aut_firstName, aut.aut_lastName, uni.UniversityName, t_type, t_year, t_numOfPages, t_subDate, inst.InstituteName, lang.LangName, gra.ThesisGrade, sup.sup_firstName, sup.sup_lastName
FROM [GTS].[dbo].[Thesis] AS t 
INNER JOIN University uni ON t.t_UniversityID = uni.UniversityID 
INNER JOIN Institute inst ON t.t_InstituteID = inst.InstituteID
INNER JOIN[Subjects] sub ON t.t_SubjectID = sub.SubjectID 
INNER JOIN Author aut ON t.t_AuthorID = aut.AuthorID 
INNER JOIN [Language] lang ON t.t_LanguageID = lang.LanguageID
LEFT OUTER JOIN Grade gra ON t.ThesisID = gra.g_ThesisID
LEFT OUTER JOIN Supervisor sup ON gra.g_SupervisorID = sup.SupervisorID


WHERE UniversityName = @universityName AND InstituteName = @InstituteName AND SubjectName = @SubjectName AND t_type = @Type AND LangName = @LangName aut_firstName = @aut_firstName AND aut_lastName = @aut_lastName
