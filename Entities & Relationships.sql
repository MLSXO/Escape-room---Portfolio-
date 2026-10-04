CREATE TABLE Escape_room (
    Room_ID INT AUTO_INCREMENT PRIMARY KEY,
    Escape_Room_Title VARCHAR(45),
    Escape_Room_Theme VARCHAR(45),
    DifficultyLevel INT,
    Duration INT
);

CREATE TABLE Puzzles (
    Puzzle_ID INT AUTO_INCREMENT PRIMARY KEY,
    Room_ID INT,
    Puzzle_name VARCHAR(45),
    Puzzles_Description VARCHAR(45),
    Puzzle_type VARCHAR(45),
    DifficultyLevel INT,
    FOREIGN KEY (Room_ID) REFERENCES Escape_room(Room_ID)
);

CREATE TABLE Teams (
    Team_ID INT AUTO_INCREMENT PRIMARY KEY,
    Room_ID INT,
    Start_time DATETIME,
    End_time DATETIME,
    T_Completion_Status VARCHAR(45),
    Team_Name VARCHAR(45),
    FOREIGN KEY (Room_ID) REFERENCES Escape_room(Room_ID)
);

CREATE TABLE Players (
    Player_ID INT AUTO_INCREMENT PRIMARY KEY,
    Player_Name VARCHAR(45),
    Player_Nickname VARCHAR(45),
    Player_Email VARCHAR(45)
);

CREATE TABLE Team_Players (
    Team_Player_ID INT AUTO_INCREMENT PRIMARY KEY,
    Player_ID INT,
    Team_ID INT,
    FOREIGN KEY (Player_ID) REFERENCES Players(Player_ID),
    FOREIGN KEY (Team_ID) REFERENCES Teams(Team_ID)
);

CREATE TABLE Team_Progress (
    TP_ID INT AUTO_INCREMENT PRIMARY KEY,
    Team_ID INT,
    Puzzle_ID INT,
    TP_Start_time DATETIME,
    TP_End_time DATETIME,
    TP_Solved_Status VARCHAR(45),
    FOREIGN KEY (Team_ID) REFERENCES Teams(Team_ID),
    FOREIGN KEY (Puzzle_ID) REFERENCES Puzzles(Puzzle_ID)
);

CREATE TABLE Hints (
    Hint_ID INT AUTO_INCREMENT PRIMARY KEY,
    Puzzle_ID INT,
    Hint_text VARCHAR(45),
    UsageCount INT,
    FOREIGN KEY (Puzzle_ID) REFERENCES Puzzles(Puzzle_ID)
);

CREATE TABLE Player_Actions (
    Action_ID INT AUTO_INCREMENT PRIMARY KEY,
    Player_ID INT,
    Puzzle_ID INT,
    Action_Type VARCHAR(45),
    Action_Timestamp DATETIME,
    FOREIGN KEY (Player_ID) REFERENCES Players(Player_ID),
    FOREIGN KEY (Puzzle_ID) REFERENCES Puzzles(Puzzle_ID)
);
