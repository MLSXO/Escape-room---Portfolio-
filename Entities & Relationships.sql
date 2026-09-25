
-- 1: Escape Rooms 
CREATE TABLE Escape_room (
Room_ID INT AUTO INCREMENT,
Escape_Room_Title varchar(45),
Escape_Room_Theme varchar(45),
Escape_Room_DifficultyLevel INT,-- INT eller varchar? 
Duration INT ) 

-- Puzzles 
CREATE TABLE Puzzles(
Room_ID INT AUTO INCREMENT,
Puzzle_name varchar(45),
Puzzles_Description varchar(45),
Puzzle_type varchar(45), 
) 

-- Teams 
CREATE TABLE Teams (
Team_ID, INT AUTO INCREMENT,
Start_time DATETIME,
End_time DATETIME,
T_Completion_Status varchar(45) -- varchar ? 
)

-- Players
CREATE TABLE Players (
    Player_ID INT AUTO INCREMENT,
    Player_Name varchar(45),
    Player_Nickname varchar(45),
    Player_Email varchar(45)
)

-- Team Progress 
CREATE TABLE Team_Progress (
    Team_ID INT,
    Puzzle_ID INT,
    TP_Start_time DATETIME,
    TP_End_time DATETIME,
    TP_Solved_Status varchar(45) -- varchar ?
)

-- Hints 
CREATE TABLE Hints (
    Hint_ID INT AUTO INCREMENT,
    Puzzle_ID INT,
    Hint_text varchar(45),
    UsageCount varchar(45)
)

-- Player Actions
CREATE TABLE Player_Actions (
    Action_ID INT AUTO INCREMENT,
    Player_ID INT,
    Puzzle_ID INT,
    Action_Type varchar(45),
    Action_Timestamp DATETIME    
)
