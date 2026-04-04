-- 1. DATABASE & TABLES SETUP

-- Create Athletes Table

CREATE TABLE Athletes (

    Athlete_ID INT PRIMARY KEY,

    Full_Name VARCHAR(100),

    Position VARCHAR(50),

    Age INT

);



-- Create Training Performance Table

CREATE TABLE Training_Performance (

    Session_ID INT PRIMARY KEY,

    Athlete_ID INT,

    Session_Date DATE,

    Distance_KM DECIMAL(5,2),

    Max_Speed_KMH DECIMAL(5,2),

    Avg_Heart_Rate INT,

    Reported_Fatigue INT,

    FOREIGN KEY (Athlete_ID) REFERENCES Athletes(Athlete_ID)

);


-- 2. DATA GENERATION (350+ Records)

-- Populate 50 Athletes

INSERT INTO Athletes (Athlete_ID, Full_Name, Position, Age) VALUES

(1, 'Andre Vardy', 'Forward', 34), (2, 'Hiroki Sato', 'Midfielder', 26), 

-- Populate 50 Athletes
INSERT INTO Athletes (Athlete_ID, Full_Name, Position, Age) VALUES
(1, 'Andre Vardy', 'Forward', 34), (2, 'Hiroki Sato', 'Midfielder', 26),
(3, 'Luca Rossi', 'Defender', 29), (4, 'Mateo Silva', 'Goalkeeper', 22),
(5, 'John Smith', 'Midfielder', 27), (6, 'Klaus Müller', 'Defender', 31),
(7, 'Jean Dupont', 'Forward', 24), (8, 'Ahmed Hassan', 'Midfielder', 28),
(9, 'Diego Torres', 'Defender', 33), (10, 'Erik Larsson', 'Forward', 25),
(11, 'Liam O''Connor', 'Midfielder', 23), (12, 'Ivan Petrov', 'Goalkeeper', 30),
(13, 'Sven Lindberg', 'Defender', 26), (14, 'Marco Verratti', 'Midfielder', 29),
(15, 'Tiago Mendes', 'Forward', 21), (16, 'Kenji Tanaka', 'Defender', 27),
(17, 'Carlos Bacca', 'Forward', 34), (18, 'Hans Schmidt', 'Midfielder', 22),
(19, 'Pablo Gavi', 'Midfielder', 19), (20, 'Kevin De Bruyne', 'Midfielder', 32),
(21, 'Harry Kane', 'Forward', 30), (22, 'Virgil Dijk', 'Defender', 32),
(23, 'Alisson Becker', 'Goalkeeper', 31), (24, 'Robert Lewandowski', 'Forward', 35),
(25, 'Luka Modric', 'Midfielder', 38), (26, 'Bruno Fernandes', 'Midfielder', 29),
(27, 'Mohamed Salah', 'Forward', 31), (28, 'Son Heung-min', 'Forward', 31),
(29, 'Joshua Kimmich', 'Midfielder', 29), (30, 'Ruben Dias', 'Defender', 26),
(31, 'Ederson Moraes', 'Goalkeeper', 30), (32, 'Jude Bellingham', 'Midfielder', 20),
(33, 'Erling Haaland', 'Forward', 23), (34, 'Kylian Mbappe', 'Forward', 25),
(35, 'Vinicius Junior', 'Forward', 23), (36, 'Rodri Hernandez', 'Midfielder', 27),
(37, 'Thibaut Courtois', 'Goalkeeper', 31), (38, 'Alphonso Davies', 'Defender', 23),
(39, 'Achraf Hakimi', 'Defender', 25), (40, 'Bukayo Saka', 'Forward', 22),
(41, 'Martin Odegaard', 'Midfielder', 25), (42, 'Declan Rice', 'Midfielder', 25),
(43, 'Lautaro Martinez', 'Forward', 26), (44, 'Rafael Leao', 'Forward', 24),
(45, 'Theo Hernandez', 'Defender', 26), (46, 'Mike Maignan', 'Goalkeeper', 28),
(47, 'Dusan Vlahovic', 'Forward', 24), (48, 'Nicolo Barella', 'Midfielder', 27),
(49, 'Alessandro Bastoni', 'Defender', 24), (50, 'Zlatan Ibrahim', 'Forward', 40);
(50, 'Zlatan Ibrahim', 'Forward', 40);



-- Generate 7 days of Randomized Training Data per Athlete

DECLARE @date DATE = '2026-03-24';

WHILE @date <= '2026-03-31'

BEGIN

    INSERT INTO Training_Performance (Session_ID, Athlete_ID, Session_Date, Distance_KM, Max_Speed_KMH, Avg_Heart_Rate, Reported_Fatigue)

    SELECT 

        (a.Athlete_ID + (CAST(DATEDIFF(day, '2026-01-01', @date) AS INT) * 100)), 

        a.Athlete_ID, 

        @date,

        (5 + (ABS(CHECKSUM(NEWID())) % 801) / 100.0), -- Distance 5-13km

        (22 + (ABS(CHECKSUM(NEWID())) % 1201) / 100.0), -- Speed 22-34km/h

        (130 + (ABS(CHECKSUM(NEWID())) % 56)), -- HR 130-185

        (1 + (ABS(CHECKSUM(NEWID())) % 10)) -- Fatigue 1-10

    FROM Athletes a;

    

    SET @date = DATEADD(day, 1, @date);

END

