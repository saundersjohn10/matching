# matching
An iOS app that is a replica of the game 1010

The game works by the user dragging the various shapes of blocks onto the board.  When a whole row or column is filled it disappears and the goal is to last as long as possible for the highest score.  The game is based on the popular game 1010 that is available in the app store.

The board is treated as a 2D array that is referenced as the user places blocks onto the board.  Every time the user places a block 2 conditions are checked: whether the game is lost (whether there are no options left for the user to place a new block) and if a whole row is now filled.  The blocks are randomized with 18 different options for the block's shape and 8 different colors all exactly like the game it is based on.  

The language used was Apple's Swift version 4 (the most recent version).    

![ezgif com-video-to-gif](https://user-images.githubusercontent.com/36249204/50943594-219c9480-145b-11e9-99ca-2275cbf9742f.gif)
