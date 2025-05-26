create database project_2;
show databases;
use project_2;
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(50) NOT NULL
);
CREATE TABLE Quiz (
    q_no INT PRIMARY KEY,
    question VARCHAR(255) NOT NULL,
    option_A VARCHAR(255) NOT NULL,
    option_B VARCHAR(255) NOT NULL,
    option_C VARCHAR(255) NOT NULL,
    option_D VARCHAR(255) NOT NULL,
    correct_option VARCHAR(25) NOT NULL
);
select * from Quiz;

create table Participants(Name varchar(100), Email varchar(100), Phone varchar(100) primary key);
select * from Participants;
use project;
show tables;
select * from quiz;
CREATE TABLE QuizResponses (
    id INT AUTO_INCREMENT PRIMARY KEY,	
    question VARCHAR(255),
    answer VARCHAR(255)
);
select * from QuizResponses;
delete from QuizResponses where answer="A";
insert into Quiz values(1, "What does the acronym CPU stand for?", "Central Processing Unit", "Computer Personal Unit", "Central Peripheral Unit", "Core Processing Utility", "A");
insert into Quiz values(2, "Which programming language is known as the 'mother of all languages'?", "Python", "C", "Java", "Assembly", "B");
insert into Quiz values(3, "What is the default port number for MySQL?", "8080", "5432", "3306", "1521", "C");
insert into Quiz values(4, "Who is the founder of Microsoft?", "Steve Jobs", "Bill Gates", "Mark Zuckerberg", "Elon Musk", "B");
insert into Quiz values(5, "What does HTML stand for?", "Hyper Text Markup Language", " High-Level Text Management Language", "Hyperlink and Text Marking Language", "Home Tool Markup Language", "A");
INSERT INTO Quiz VALUES(6, "Which of the following is not a programming language?", "Python", "JavaScript", "HTML", "Ruby", "C");
insert into Quiz values(7, "Who developed the first computer programming language?", "Charles Babbage", "Ada Lovelace", "Alan Turing", "John von Neumann", "B");
insert into Quiz values(8, "What is the full form of RAM?", "Random Access Memory", "Read Access Memory", "Random Allocation Memory", "Read Allocation Memory", "A");
insert into Quiz values(9, "What year was the first version of Windows released?", "1995", "1987", "1983", "2001", "C");
insert into Quiz values(10, "Which of the following is an example of a high-level programming language?", "C", "Assembly", "Machine Language", "None of the above", "A");
insert into Quiz values(11, "Which company developed the Java programming language?", "Oracle", "Microsoft", "Sun Microsystems", "IBM", "C");
insert into Quiz values(12, "What does an IP address do?", "Identifies devices on a network", "Connects computers to the internet", "Stores data packets", "Transfers data between computers", "A");
insert into Quiz values(13, "Who is known as the father of the computer?", "Alan Turing", "Charles Babbage", "Bill Gates", "Tim Berners-Lee", "B");
insert into Quiz values(14, "Which of the following is a correct syntax to declare an integer variable in C?", "int num;", "integer num;", "int:num;", "integer:num;", "A");
insert into Quiz values(15, "Which protocol is used to send emails?", "FTP", "SMTP", "HTTP", "POP3", "B");
insert into Quiz values(16, "What does SQL stand for?", "Structured Query Language", "Simple Query Language", "Structured Quality Language", "System Query Language", "A");
insert into Quiz values(17, "What is the primary function of an operating system?", "Manage hardware and software resources", "Provide network security", "Manage user accounts", "Store files", "A");
insert into Quiz values(18, "Which of the following is NOT an open-source operating system?", "Linux", "Windows", "Android", "BSD", "B");
insert into Quiz values(19, "Which language is known for its use in web development?", "C", "JavaScript", "Python", "Java", "B");
insert into Quiz values(20, "Which of the following is a popular database management system?", "MySQL", "Excel", "Notepad", "Visual Studio", "A");
insert into Quiz values(21, "What does the acronym URL stand for?", "Universal Resource Locator", "Uniform Resource Locator", "Uniform Rating Locator", "Unified Resource Locator", "B");
insert into Quiz values(22, "What is the largest type of computer?", "Microcomputer", "Mainframe", "Minicomputer", "Supercomputer", "B");
insert into Quiz values(23, "Which command is used to display the current directory in Linux?", "pwd", "cd", "ls", "mkdir", "A");
insert into Quiz values(24, "Which company is known for creating the first personal computer?", "Apple", "IBM", "Microsoft", "Dell", "B");
insert into Quiz values(25, "Which programming language is primarily used for iOS development?", "Swift", "Java", "C#", "Python", "A");
insert into Quiz values(26, "What is the full form of DNS?", "Domain Name Server", "Dynamic Name System", "Domain Network Server", "Domain Number Service", "A");
insert into Quiz values(27, "Which of the following is an example of a version control system?", "Git", "MySQL", "PHP", "Apache", "A");
insert into Quiz values(28, "What is the function of the ALU in a computer?", "Stores data", "Performs arithmetic operations", "Controls the memory", "Handles input/output", "B");
insert into Quiz values(29, "What does CSS stand for in web development?", "Cascading Style Sheets", "Creative Style Sheets", "Computer Style Sheets", "Custom Style Sheets", "A");
insert into Quiz values(30, "Which of the following is the most popular programming language for artificial intelligence?", "Python", "Java", "C++", "JavaScript", "A");