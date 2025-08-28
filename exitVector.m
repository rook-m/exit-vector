% Exit Vector

% gameInProgress is a variable that acts like an on/off switch for the
% entire game. While gameInProgress = 1, the game will not stop.
gameInProgress = 1;
menuLoop = 1;
% Begin Game
while gameInProgress == 1
    % Run through menu
    fprintf("Exit Vector" + ...
        "\n-----------\n");
    fprintf("Welcome to Exit Vector!\n" + ...
        "Please interact with the menus by entering a number\n" + ...
        "1) Play Game\n" + ...
        "2) Options\n" + ...
        "3) Quit\n");
    menuChoice = input("> ");
    if menuChoice == 1
        fprintf("Game Loop")
    elseif menuChoice == 2
        fprintf("Options Loop")
    elseif menuChoice == 3
        fprintf("Thank you for playing! Goodbye.\n\n");
        gameInProgress = 0;
    end
end
