CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    PhoneNumber VARCHAR(20),
    Email VARCHAR(255),
    SignUpDate DATE,
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    Birthdate DATE
);

CREATE TABLE Language (
    LanguageID INT PRIMARY KEY,
    LanguageName VARCHAR(50),
    DifficultyLevel VARCHAR(50)
);

CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    Name VARCHAR(100),
    Level VARCHAR(50),
    CourseType VARCHAR(50),
    LanguageID INT,
    FOREIGN KEY (LanguageID) REFERENCES Language(LanguageID)
);

CREATE TABLE Lessons (
    LessonID INT PRIMARY KEY,
    LessonDifficulty VARCHAR(50),
    LessonType VARCHAR(50),
    LessonName VARCHAR(100),
    CourseID INT,
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

CREATE TABLE Exercise (
    ExerciseID INT PRIMARY KEY,
    Question TEXT,
    Answer TEXT,
    ExerciseType VARCHAR(50),
    LessonID INT,
    FOREIGN KEY (LessonID) REFERENCES Lessons(LessonID)
);

CREATE TABLE UserProgress (
    ProgressID INT PRIMARY KEY,
    CompletionDate DATE,
    Score INT
);

CREATE TABLE Achievements (
    AchievementID INT PRIMARY KEY,
    Name VARCHAR(100),
    Description TEXT
);

CREATE TABLE Purchase (
    TransactionID INT PRIMARY KEY,
    PaymentAmount DECIMAL(10, 2),
    TransactionDate DATE,
    UserID INT,
    SID INT,
    FOREIGN KEY (UserID) REFERENCES Users (UserID)
);

CREATE TABLE Learns (
    UserID INT,
    LanguageID INT,
    PRIMARY KEY (UserID, LanguageID),
    FOREIGN KEY (UserID) REFERENCES Users (UserID),
    FOREIGN KEY (LanguageID) REFERENCES Language(LanguageID)
);

CREATE TABLE Earns (
    ProgressID INT,
    AchievementID INT,
    PRIMARY KEY (ProgressID, AchievementID),
    FOREIGN KEY (ProgressID) REFERENCES UserProgress(ProgressID),
    FOREIGN KEY (AchievementID) REFERENCES Achievements(AchievementID)
);

