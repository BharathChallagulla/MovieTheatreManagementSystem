use MTMS;

/*
Theatre
*/

CREATE TABLE Theatre (

	TheatreID VARCHAR(10),

	TheatreName VARCHAR(20),

	Location VARCHAR(10),

	Technology VARCHAR(5),

	PRIMARY KEY (TheatreID)

);



/*
Movies
*/

CREATE TABLE Movies (

	MovieID VARCHAR(10) NOT NULL,

	MovieName VARCHAR(20) NOT NULL,

	Language VARCHAR(10) NOT NULL,

	Genre VARCHAR(10) NOT NULL,

	Rating INT NOT NULL,

	Duration TIME NOT NULL,

	TheatreID VARCHAR(10) NOT NULL,

	ScreeningID VARCHAR(10) NOT NULL,

	PRIMARY KEY (MovieID),

	FOREIGN KEY (TheatreID) REFERENCES Theatre(TheatreID),
);

/*
Shows
*/

CREATE TABLE Shows (

	ShowID VARCHAR(10) NOT NULL,

	StartTime TIME NOT NULL,

	EndTime TIME NOT NULL,

	ScreeningID VARCHAR(10) NOT NULL,

	Date DATE NOT NULL,

	PRIMARY KEY (ShowID),
);


/*
Screenings
*/

CREATE TABLE Screenings (

	ScreeningID VARCHAR(10) NOT NULL,

	MovieID VARCHAR(10) NOT NULL,

	ShowID VARCHAR(10) NOT NULL,

	PRIMARY KEY (ScreeningID),

	FOREIGN KEY (MovieID) REFERENCES Movies(MovieID),

	FOREIGN KEY (ShowID) REFERENCES Shows(ShowID), 

);

/*
Employees
*/

CREATE TABLE Employees (

	EmployeeID VARCHAR(10) NOT NULL,

	Fname VARCHAR(20) NOT NULL,

	Lname VARCHAR(20) NOT NULL,

	Role VARCHAR(10) NOT NULL,

	Salary INT NOT NULL,

	EmployeeStartDate DATE NOT NULL,

	EmployeeEndDate DATE NOT NULL,

	TheatreID VARCHAR(10) NOT NULL,

	PRIMARY KEY (EmployeeID),

	FOREIGN KEY (TheatreID) References Theatre(TheatreID)

);

/*
Payments
*/

CREATE TABLE Payments (

	PaymentID VARCHAR(10) NOT NULL,

	PaymentType VARCHAR(6) NOT NULL,

	PaymentDate DATE NOT NULL,

	PaymentTime TIMESTAMP NOT NULL,

	PaymentStatus VARCHAR(1) NOT NULL,

	PRIMARY KEY (PaymentID)

);

/*
Seats
*/

CREATE TABLE Seats (

	SeatID VARCHAR(10) NOT NULL,

	SeatType VARCHAR(5) NOT NULL,

	RowNo INT NOT NULL,

	SeatNumber INT NOT NULL,

	TicketID VARCHAR(10) NOT NULL,

	PRIMARY KEY (SeatID),

);

/*
Tickets
*/

CREATE TABLE Tickets (

	TicketID VARCHAR(10) NOT NULL,

	ShowID VARCHAR(10) NOT NULL,

	BookedDate DATE NOT NULL,

	SeatID VARCHAR(10) NOT NULL,

	PaymentID VARCHAR(10) NOT NULL,

	CustomerName VARCHAR(20) NOT NULL,

	PRIMARY KEY (TicketID),

	FOREIGN KEY (ShowID) References Shows(ShowID),

	FOREIGN KEY (SeatID) References Seats(SeatID),

	FOREIGN KEY (PaymentID) References Payments(PaymentID)

);




