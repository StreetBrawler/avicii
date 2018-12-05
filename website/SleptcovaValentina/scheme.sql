DROP TABLE IF EXISTS authors;
DROP TABLE IF EXISTS books;
CREATE TABLE authors (
	AuthorID int NOT NULL PRIMARY KEY, 
	FirstName varchar(50),
	FamilyName varchar(50)
);
DESCRIBE authors;
CREATE TABLE books (
	BookID int PRIMARY KEY,
	AuthorID int NOT NULL REFERENCES authors(AuthorID), 
	Title varchar(255) NOT NULL, 
	Year int NOT NULL default '2000'
	);
DESCRIBE books;
INSERT INTO authors VALUES (1,'���','�������');
INSERT INTO authors VALUES (2,'�����','�����������');
INSERT INTO authors VALUES (3,'������','����������');
INSERT INTO books VALUES (1,1,'����� � ���',1868);
INSERT INTO books VALUES (2,1,'���� ��������',1878);
INSERT INTO books VALUES (3,2,'������������ � ���������',1866);
INSERT INTO books VALUES (4,2,'�����',1868);
INSERT INTO books VALUES (5,2,'������ ����������',1880);
INSERT INTO books VALUES (6,2,'����',1872);
INSERT INTO books VALUES (7,3,'�������� ���������',1997);

CREATE TABLE users (
	UserID int NOT NULL PRIMARY KEY, 
	UserName varchar(20),
	UserPass varchar(20),
	UserEMail varchar(100));
INSERT INTO users VALUES (1, 'KingMonster','password','monster@hotmail.com');
INSERT INTO users VALUES (2, 'School23rulz','iamcool','sc23@hotmail.com');
INSERT INTO users VALUES (3, 'Beorht','12345','guest@hotmail.com');
