-----query 1---------
SELECT U.Fname, U.Lname, L.LanguageName
FROM Users AS U
JOIN Learns AS LR ON U.UserID = LR.UserID
JOIN Language AS L ON LR.LanguageID = LR.LanguageID;

-----query 2----------
SELECT C.Name AS CourseName, C.Level
FROM Course AS C;


-----query 3-----------
SELECT 
U.Fname + ' ' + U.Lname AS FullName,  -- Derived field: FullName
U.SignUpDate
FROM Users AS U;

------query 4---------
SELECT COUNT(U.UserID) AS NumberOfUsers
FROM Users AS U;

------query 5--------
SELECT L.LessonName, C.Name AS CourseName
FROM Lessons AS L
JOIN Course AS C ON L.CourseID = C.CourseID;