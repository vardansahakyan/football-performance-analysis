USE football_analysis;
SELECT COUNT(*) FROM players;

SELECT * FROM players LIMIT 10;

SELECT 
    Player,
    Squad,
    League_Clean,
    Gls AS Goals,
    Ast AS Assists,
    xG AS Expected_Goals
FROM players
ORDER BY Gls DESC
LIMIT 10;