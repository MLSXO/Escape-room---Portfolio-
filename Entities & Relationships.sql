
-- Escape Rooms
CREATE TABLE Escape_room (
Room_ID INT AUTO_INCREMENT PRIMARY KEY,
Escape_Room_Title varchar(45),
Escape_Room_Theme varchar(45),
DifficultyLevel INT,
Duration INT
)

-- Puzzles
CREATE TABLE Puzzles(
Puzzle_ID INT AUTO_INCREMENT PRIMARY KEY,
Room_ID INT FOREIGN KEY REFERENCES Escape_room(Room_ID),
Puzzle_name varchar(45),
Puzzles_Description varchar(45),
Puzzle_type varchar(45),
DifficultyLevel INT
)

-- Teams
CREATE TABLE Teams (
Team_ID INT AUTO_INCREMENT PRIMARY KEY,
Room_ID INT FOREIGN KEY REFERENCES Escape_room(Room_ID),
Start_time DATETIME,
End_time DATETIME,
T_Completion_Status varchar(45),
Team_Name varchar(45)
)

-- Team Players
CREATE TABLE Team_Players (
    Team_Player_ID INT AUTO_INCREMENT PRIMARY KEY,
    Player_ID INT FOREIGN KEY REFERENCES Players(Player_ID),
    Team_ID INT FOREIGN KEY REFERENCES Teams(Team_ID)
)

-- Players
CREATE TABLE Players (
    Player_ID INT AUTO_INCREMENT PRIMARY KEY,
    Player_Name varchar(45),
    Player_Nickname varchar(45),
    Player_Email varchar(45)
)

-- Team Progress
CREATE TABLE Team_Progress (
    TP_ID INT AUTO_INCREMENT PRIMARY KEY,
    Team_ID INT FOREIGN KEY REFERENCES Teams(Team_ID),
    Puzzle_ID INT FOREIGN KEY REFERENCES Puzzles(Puzzle_ID),
    TP_Start_time DATETIME,
    TP_End_time DATETIME,
    TP_Solved_Status varchar(45)
)

-- Hints
CREATE TABLE Hints (
    Hint_ID INT AUTO_INCREMENT PRIMARY KEY,
    Puzzle_ID INT FOREIGN KEY REFERENCES Puzzles(Puzzle_ID),
    Hint_text varchar(45),
    UsageCount INT
)

-- Player Actions
CREATE TABLE Player_Actions (
    Action_ID INT AUTO_INCREMENT PRIMARY KEY,
    Player_ID INT FOREIGN KEY REFERENCES Players(Player_ID),
    Puzzle_ID INT FOREIGN KEY REFERENCES Puzzles(Puzzle_ID),
    Action_Type varchar(45),
    Action_Timestamp DATETIME
)
