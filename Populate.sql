INSERT INTO Users (UserID, PhoneNumber, Email, SignUpDate, Fname, Lname, Birthdate) VALUES  -- Changed "User" to "Users"
(1, '123-456-7890', 'user1@example.com', '2024-01-15', 'John', 'Doe', '1990-05-20'),
(2, '987-654-3210', 'user2@example.com', '2024-02-01', 'Jane', 'Smith', '1992-10-10');

INSERT INTO Language (LanguageID, LanguageName, DifficultyLevel) VALUES
(1, 'Spanish', 'Beginner'),
(2, 'French', 'Intermediate');

INSERT INTO Course (CourseID, Name, Level, CourseType, LanguageID) VALUES
(1, 'Spanish 101', 'Beginner', 'Language', 1),
(2, 'French Basics', 'Beginner', 'Language', 2);

INSERT INTO Lessons (LessonID, LessonName, LessonDifficulty, LessonType, CourseID) VALUES
(1, 'Greetings', 'Easy', 'Vocabulary', 1),
(2, 'Basic Phrases', 'Easy', 'Grammar', 2);

INSERT INTO Exercise (ExerciseID, Question, Answer, ExerciseType, LessonID) VALUES
(1, 'Hola means?', 'Hello', 'Multiple Choice', 1),
(2, 'Bonjour means?', 'Hello', 'Multiple Choice', 2);

INSERT INTO UserProgress (ProgressID, CompletionDate, Score) VALUES
(1, '2024-01-20', 85),
(2, '2024-02-05', 92);

INSERT INTO Achievements (AchievementID, Name, Description) VALUES
(1, 'First Lesson', 'Completed your first lesson'),
(2, 'Beginner Badge', 'Completed a beginner course');

INSERT INTO Learns (UserID, LanguageID) VALUES
(1, 1),
(2, 2);

INSERT INTO Purchase (UserID, SID, PaymentAmount, TransactionDate, TransactionID) VALUES
(1, 101, 25.00, '2024-01-15', 1),
(2, 102, 30.00, '2024-02-01', 2);

INSERT INTO Earns (ProgressID, AchievementID) VALUES
(1, 1),
(2, 2);
