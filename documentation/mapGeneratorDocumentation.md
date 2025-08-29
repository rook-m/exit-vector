# mapGenerator
mapGenerator is a function that generates the map on which the user will be playing. It works like this.  
1. Tile types are labelled 0->n (note that 0 is reserved for empty tiles).
1. The function reads in two parameters (height and width of map set in options).
1. Tiles are generated in order of their number.
    - There is only ever one start and one escape.
    - Start and escape cannot be overridden by other tiles.

The generator creates an array of 0's and 1's, with the probability of any given element being 1 equal to the tileProbability variable. Based on this generated array, the corresponding tileID is then "masked" over the map from the previous stage, checking for precedent and then applying changes before continuing to the next. Precedent is as listed below (higher number = greater precedent).
1. Start & Escape
1. Wall
1. Enemy
1. Treasure
1. Trap
1. Empty