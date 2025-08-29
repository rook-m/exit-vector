% Exit Vector

% gameInProgress is a variable that acts like an on/off switch for the
% entire game. While gameInProgress = 1, the game will not stop.
gameInProgress = 1;
menuLoop = 1;
% Begin Game
while gameInProgress == 1
    % Set default game options
    gameHeight = 10;
    gameWidth = 10;
    menuChoice = 0;
    % Run through menu
    while menuChoice == 0
        fprintf("Exit Vector" + ...
            "\n-----------\n");
        fprintf("Welcome to Exit Vector!\n" + ...
            "Please interact with the menus by entering a number\n" + ...
            "1) Play Game\n" + ...
            "2) Options\n" + ...
            "3) Quit\n");
        menuChoice = input("> ");
        if menuChoice == 1
            gameMap = mapGeneration(gameHeight,gameWidth);
        elseif menuChoice == 2
            fprintf("Options Loop")
            menuChoice = 0
        elseif menuChoice == 3
            fprintf("Thank you for playing! Goodbye.\n\n");
            gameInProgress = 0;
        end
    end
end

function [mapFinal] = mapGeneration(gameHeight,gameWidth)
    % MAPGENERATION Initialises the game map for two given parameters
    % gameHeight and gameWidth.
    % Intialise tile values and probabilities
    emptyTile = 0;
    startTile = 1;
    escapeTile = 2;
    wallTile = 3;
    wallProbability = 0.2;
    enemyTile = 4;
    enemyProbability = 0.05;
    treasureTile = 5;
    treasureProbability = 0.05;
    trapTile = 6;
    trapProbability = 0.05;
    % Generate map in stages (stage number representing the type of tile
    % being masked over the previous map).
    mapStageZero = zeros(gameHeight,gameWidth);

    % Final generated map.
    mapFinal = 0;
end
