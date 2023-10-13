USE Library_Mgmt_Sys;

CREATE TABLE LibraryUsers (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15),
    Address VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50),
    ZipCode VARCHAR(10),
    RegistrationDate DATE
);


CREATE TABLE Libraries (
    LibraryID INT AUTO_INCREMENT PRIMARY KEY,
    LibraryName VARCHAR(255) NOT NULL,
    Address VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(50),
    ZipCode VARCHAR(10),
    Phone VARCHAR(15),
    Email VARCHAR(100),
    EstablishedYear INT,
    Website VARCHAR(255)
);


CREATE TABLE LibraryBooks (
    ISBN VARCHAR(13) PRIMARY KEY,
    Title VARCHAR(255),
    Author VARCHAR(100),
    Genre VARCHAR(50),
    Publication_Year INT,
    Publisher VARCHAR(100),
    Copies_Available INT,
    Total_Copies INT,
    Checked_Out INT,
    LibraryID INT,
    FOREIGN KEY (LibraryID) REFERENCES Libraries(LibraryID)
);


CREATE TABLE LibraryLoans (
    LoanID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT,
    ISBN VARCHAR(13),
    LoanDate DATE,
    DueDate DATE,
    FOREIGN KEY (UserID) REFERENCES LibraryUsers(UserID),
    FOREIGN KEY (ISBN) REFERENCES LibraryBooks(ISBN)
);


INSERT INTO LibraryUsers (UserID, FirstName, LastName, Email, Phone, Address, City, State, ZipCode, RegistrationDate) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '555-123-4567', '123 Main St', 'Los Angeles', 'CA', '90001', '2023-10-01'),
(2, 'Alice', 'Smith', 'alice.smith@example.com', '555-987-6543', '456 Elm St', 'New York', 'NY', '10001', '2023-10-02'),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', '555-555-5555', '789 Oak St', 'Chicago', 'IL', '60601', '2023-10-03'),
(4, 'Emily', 'Brown', 'emily.brown@example.com', '555-111-2222', '321 Pine St', 'Houston', 'TX', '77001', '2023-10-04'),
(5, 'William', 'Davis', 'william.davis@example.com', '555-444-3333', '567 Birch St', 'Phoenix', 'AZ', '85001', '2023-10-05'),
(6, 'Emma', 'Jones', 'emma.jones@example.com', '555-999-8888', '654 Cedar St', 'Philadelphia', 'PA', '19101', '2023-10-06'),
(7, 'James', 'Wilson', 'james.wilson@example.com', '555-777-6666', '432 Redwood St', 'San Antonio', 'TX', '78201', '2023-10-07'),
(8, 'Olivia', 'Taylor', 'olivia.taylor@example.com', '555-123-7890', '876 Maple St', 'San Diego', 'CA', '92101', '2023-10-08'),
(9, 'Alexander', 'Anderson', 'alexander.anderson@example.com', '555-987-6543', '987 Willow St', 'San Francisco', 'CA', '94101', '2023-10-09'),
(10, 'Sophia', 'Martinez', 'sophia.martinez@example.com', '555-555-5555', '345 Oakwood St', 'Miami', 'FL', '33101', '2023-10-10'),
(11, 'Daniel', 'Hernandez', 'daniel.hernandez@example.com', '555-111-2222', '567 Palm St', 'Dallas', 'TX', '75201', '2023-10-11'),
(12, 'Ava', 'Lopez', 'ava.lopez@example.com', '555-444-3333', '234 Cedarwood St', 'Seattle', 'WA', '98101', '2023-10-12'),
(13, 'Ethan', 'Garcia', 'ethan.garcia@example.com', '555-999-8888', '123 Birchwood St', 'Denver', 'CO', '80201', '2023-10-13'),
(14, 'Isabella', 'Rodriguez', 'isabella.rodriguez@example.com', '555-777-6666', '432 Oakdale St', 'Atlanta', 'GA', '30301', '2023-10-14'),
(15, 'Mason', 'Smith', 'mason.smith@example.com', '555-123-7890', '345 Pinewood St', 'Boston', 'MA', '02101', '2023-10-15'),
(16, 'Oliver', 'Wilson', 'oliver.wilson@example.com', '555-987-6543', '678 Spruce St', 'Las Vegas', 'NV', '89101', '2023-10-16'),
(17, 'Sophia', 'Taylor', 'sophia.taylor@example.com', '555-555-5555', '890 Oakside St', 'Portland', 'OR', '97201', '2023-10-17'),
(18, 'Ethan', 'Davis', 'ethan.davis@example.com', '555-111-2222', '123 Pineville St', 'Detroit', 'MI', '48201', '2023-10-18'),
(19, 'Amelia', 'Martinez', 'amelia.martinez@example.com', '555-444-3333', '789 Fir St', 'Minneapolis', 'MN', '55401', '2023-10-19'),
(20, 'Liam', 'Gonzalez', 'liam.gonzalez@example.com', '555-999-8888', '456 Cedarhill St', 'Cleveland', 'OH', '44101', '2023-10-20'),
(21, 'Charlotte', 'Anderson', 'charlotte.anderson@example.com', '555-777-6666', '654 Oakridge St', 'Orlando', 'FL', '32801', '2023-10-21'),
(22, 'Noah', 'Brown', 'noah.brown@example.com', '555-123-7890', '234 Elmwood St', 'San Jose', 'CA', '95101', '2023-10-22'),
(23, 'Amelia', 'Hernandez', 'amelia.hernandez@example.com', '555-987-6543', '987 Redwood St', 'Tampa', 'FL', '33601', '2023-10-23'),
(24, 'Aiden', 'Smith', 'aiden.smith@example.com', '555-555-5555', '876 Maplewood St', 'New Orleans', 'LA', '70101', '2023-10-24'),
(25, 'Mia', 'Wilson', 'mia.wilson@example.com', '555-111-2222', '345 Pineville St', 'Honolulu', 'HI', '96801', '2023-10-25');


INSERT INTO Libraries (LibraryID, LibraryName, Address, City, State, ZipCode, Phone, Email, EstablishedYear, Website) VALUES
(1, 'Central Library', '123 Main St', 'Los Angeles', 'CA', '90001', '555-123-4567', 'central@example.com', 1990, 'www.examplelibrary.org'),
(2, 'Downtown Public Library', '456 Elm St', 'New York', 'NY', '10001', '555-987-6543', 'downtown@example.com', 1985, 'www.downtownlibrary.org'),
(3, 'City Heights Library', '789 Oak St', 'Chicago', 'IL', '60601', '555-555-5555', 'cityheights@example.com', 2000, 'www.cityheightslibrary.org'),
(4, 'Main Street Library', '321 Pine St', 'Houston', 'TX', '77001', '555-111-2222', 'mainstreet@example.com', 1975, 'www.mainstreetlibrary.org'),
(5, 'Phoenix Public Library', '567 Birch St', 'Phoenix', 'AZ', '85001', '555-444-3333', 'phoenix@example.com', 1965, 'www.phoenixlibrary.org'),
(6, 'Liberty City Library', '654 Cedar St', 'Philadelphia', 'PA', '19101', '555-999-8888', 'libertycity@example.com', 2005, 'www.libertycitylibrary.org'),
(7, 'Alamo Library', '432 Redwood St', 'San Antonio', 'TX', '78201', '555-777-6666', 'alamo@example.com', 1980, 'www.alamolibrary.org'),
(8, 'Pacific Coast Library', '876 Maple St', 'San Diego', 'CA', '92101', '555-123-7890', 'pacificcoast@example.com', 1995, 'www.pacificcoastlibrary.org'),
(9, 'Golden Gate Library', '987 Willow St', 'San Francisco', 'CA', '94101', '555-987-6543', 'goldengate@example.com', 1970, 'www.goldengatelibrary.org'),
(10, 'Miami Public Library', '345 Oakwood St', 'Miami', 'FL', '33101', '555-555-5555', 'miami@example.com', 1988, 'www.miamilibrary.org'),
(11, 'Dallas Central Library', '567 Palm St', 'Dallas', 'TX', '75201', '555-111-2222', 'dallascentral@example.com', 1992, 'www.dallaslibrary.org'),
(12, 'Seattle Public Library', '234 Cedarwood St', 'Seattle', 'WA', '98101', '555-444-3333', 'seattle@example.com', 1960, 'www.seattlelibrary.org'),
(13, 'Denver Public Library', '123 Birchwood St', 'Denver', 'CO', '80201', '555-999-8888', 'denver@example.com', 1955, 'www.denverlibrary.org'),
(14, 'Atlanta Library', '432 Oakdale St', 'Atlanta', 'GA', '30301', '555-777-6666', 'atlanta@example.com', 1968, 'www.atlantalibrary.org'),
(15, 'Boston Public Library', '345 Pinewood St', 'Boston', 'MA', '02101', '555-123-7890', 'boston@example.com', 1973, 'www.bostonlibrary.org'),
(16, 'Las Vegas Library', '678 Spruce St', 'Las Vegas', 'NV', '89101', '555-987-6543', 'lasvegas@example.com', 1998, 'www.lasvegaslibrary.org'),
(17, 'Portland Public Library', '890 Oakside St', 'Portland', 'OR', '97201', '555-555-5555', 'portland@example.com', 1966, 'www.portlandlibrary.org'),
(18, 'Detroit Public Library', '123 Pineville St', 'Detroit', 'MI', '48201', '555-111-2222', 'detroit@example.com', 1982, 'www.detroitlibrary.org'),
(19, 'Minneapolis Public Library', '789 Fir St', 'Minneapolis', 'MN', '55401', '555-444-3333', 'minneapolis@example.com', 1978, 'www.minneapolislibrary.org'),
(20, 'Cleveland Public Library', '456 Cedarhill St', 'Cleveland', 'OH', '44101', '555-999-8888', 'cleveland@example.com', 1993, 'www.clevelandlibrary.org'),
(21, 'Orlando Public Library', '654 Oakridge St', 'Orlando', 'FL', '32801', '555-777-6666', 'orlando@example.com', 1972, 'www.orlandolibrary.org'),
(22, 'San Jose Library', '234 Elmwood St', 'San Jose', 'CA', '95101', '555-123-7890', 'sanjose@example.com', 1979, 'www.sanjoselibrary.org'),
(23, 'Tampa Public Library', '987 Redwood St', 'Tampa', 'FL', '33601', '555-987-6543', 'tampa@example.com', 1983, 'www.tampalibrary.org'),
(24, 'New Orleans Library', '876 Maplewood St', 'New Orleans', 'LA', '70101', '555-555-5555', 'neworleans@example.com', 1971, 'www.neworleanslibrary.org'),
(25, 'Honolulu Public Library', '345 Pineville St', 'Honolulu', 'HI', '96801', '555-111-2222', 'honolulu@example.com', 1963, 'www.honolululibrary.org');


INSERT INTO LibraryBooks (ISBN, Title, Author, Genre, Publication_Year, Publisher, Copies_Available, Total_Copies, Checked_Out, LibraryID) VALUES
('9780061120080', 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', 1960, 'HarperCollins', 5, 5, 2, 1),
('9781984819191', '1984', 'George Orwell', 'Science Fiction', 1949, 'Penguin Books', 3, 3, 0, 2),
('9780060935462', 'The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 1951, 'Little, Brown and Company', 4, 4, 1, 3),
('9781400031363', 'One Flew Over the Cuckoo''s Nest', 'Ken Kesey', 'Fiction', 1962, 'Penguin Classics', 2, 2, 0, 4),
('9780679783264', 'The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 1925, 'Vintage Books', 2, 4, 2, 5),
('9780380002935', 'To the Lighthouse', 'Virginia Woolf', 'Fiction', 1927, 'Doubleday', 2, 3, 1, 6),
('9780765377066', 'Dune', 'Frank Herbert', 'Science Fiction', 1965, 'Ace Books', 3, 4, 1, 7),
('9780345803507', 'Gone with the Wind', 'Margaret Mitchell', 'Historical Fiction', 1936, 'Vintage Books', 2, 2, 0, 8),
('9780143039958', 'Middlemarch', 'George Eliot', 'Fiction', 1871, 'Penguin Classics', 3, 4, 1, 9),
('9780553418020', 'The Martian', 'Andy Weir', 'Science Fiction', 2011, 'Broadway Books', 5, 5, 0, 10),
('9780060929873', 'One Hundred Years of Solitude', 'Gabriel Garcia Marquez', 'Magical Realism', 1967, 'Harper & Row', 4, 5, 1, 11),
('9780451524932', 'Fahrenheit 451', 'Ray Bradbury', 'Science Fiction', 1953, 'Del Rey Books', 3, 4, 1, 12),
('9780380002934', 'The Metamorphosis', 'Franz Kafka', 'Fiction', 1915, 'Doubleday', 4, 4, 0, 13),
('9780765377068', 'The Time Machine', 'H.G. Wells', 'Science Fiction', 1895, 'Ace Books', 3, 4, 1, 14),
('9780140445863', 'Crime and Punishment', 'Fyodor Dostoevsky', 'Fiction', 1866, 'Penguin Classics', 3, 4, 1, 15),
('9780192835467', 'Pride and Prejudice', 'Jane Austen', 'Fiction', 1813, 'Oxford University Press', 4, 5, 1, 16),
('9780385515043', 'The Da Vinci Code', 'Dan Brown', 'Thriller', 2003, 'Doubleday', 3, 3, 0, 17),
('9780062024028', 'The Hunger Games', 'Suzanne Collins', 'Young Adult', 2008, 'Scholastic', 3, 4, 1, 18),
('9780451524934', 'Moby-Dick', 'Herman Melville', 'Fiction', 1851, 'Signet Classics', 2, 3, 1, 19),
('9780345803509', 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 1937, 'Houghton Mifflin', 4, 4, 2, 20),
('9780765377063', 'Brave New World', 'Aldous Huxley', 'Science Fiction', 1932, 'Harper & Brothers', 2, 3, 1, 21),
('9780143039955', 'War and Peace', 'Leo Tolstoy', 'Historical Fiction', 1869, 'Penguin Classics', 3, 4, 2, 22),
('9780553418025', 'The Road', 'Cormac McCarthy', 'Post-Apocalyptic', 2006, 'Vintage Books', 4, 5, 1, 23),
('9780060929875', 'The Lord of the Rings', 'J.R.R. Tolkien', 'Fantasy', 1954, 'Houghton Mifflin', 5, 5, 1, 24),
('9780451524938', 'The Shining', 'Stephen King', 'Horror', 1977, 'Anchor Books', 2, 3, 0, 25);


INSERT INTO LibraryLoans (UserID, ISBN, LoanDate, DueDate) VALUES
(1, '9780061120080', '2023-10-15', '2023-10-22'),
(2, '9781984819191', '2023-10-16', '2023-10-23'),
(3, '9780060935462', '2023-10-17', '2023-10-24'),
(4, '9781400031363', '2023-10-18', '2023-10-25'),
(5, '9780679783264', '2023-10-19', '2023-10-26'),
(6, '9780380002935', '2023-10-20', '2023-10-27'),
(7, '9780765377066', '2023-10-21', '2023-10-28'),
(8, '9780345803507', '2023-10-22', '2023-10-29'),
(9, '9780143039958', '2023-10-23', '2023-10-30'),
(10, '9780553418020', '2023-10-24', '2023-10-31'),
(11, '9780060929873', '2023-10-25', '2023-11-01'),
(12, '9780451524932', '2023-10-26', '2023-11-02'),
(13, '9780380002934', '2023-10-27', '2023-11-03'),
(14, '9780765377068', '2023-10-28', '2023-11-04'),
(15, '9780140445863', '2023-10-29', '2023-11-05'),
(16, '9780192835467', '2023-10-30', '2023-11-06'),
(17, '9780385515043', '2023-10-31', '2023-11-07'),
(18, '9780062024028', '2023-11-01', '2023-11-08'),
(19, '9780451524934', '2023-11-02', '2023-11-09'),
(20, '9780345803509', '2023-11-03', '2023-11-10'),
(21, '9780765377063', '2023-11-04', '2023-11-11'),
(22, '9780143039955', '2023-11-05', '2023-11-12'),
(23, '9780553418025', '2023-11-06', '2023-11-13'),
(24, '9780060929875', '2023-11-07', '2023-11-14'),
(25, '9780451524938', '2023-11-08', '2023-11-15');