# TicTacToe ROR Class

* Overview:

The program contains the business logic for the game of tic tac toe. The code can be combined easily any user interface, whether web or command line to provide an enjoyable gaming experience. The game can be played in a 3x3 grid.

## The Logic: `lib/tictactoe/core`

### `game` class

Open up `lib/tictactoe/core/game.rb`. You'll be defining the main game class

### `grid` class

Open up `lib/tictactoe/core/grid.rb`. You'll be defining game view in grid

### `player` class

Open up `lib/tictactoe/core/player.rb`. You'll be defining user

## Instructions

### Project Structure

```txt
├── Gemfile
├── Gemfile.lock
├── README.md
├── lib
│   └── tictactoe.rb
│   └── tictactoe
│       └── version.rb
│       └── core
│           └── game.rb
│           └── grid.rb
│           └── player.rb
└── spec
    └── spec_helper.rb
    └── tictactoe
        └── tictactoe_spec.rb
        └── core
            ├── game_spec.rb
            ├── grid_spec.rb
            ├── player_spec.rb
```

### Instructions run the program
1. Add this line to your application's Gemfile:

    ``` gem 'tictactoe', github: "idkraf/tictactoe", branch:"master" ```

2. And then execute:

    $ bundle
    $ respec

3. Or install it yourself as:

    $ gem install tictactoe


### Development

1. Find the files you need to be able to package up your Ruby library into a gem.

2. Put your Ruby code in the file `lib/tictactoe`.

3. To experiment with that code, run `bin/console` for an interactive prompt

4. After checking out the repo, run `bin/setup` to install dependencies. 

5. Then, run `bin/console` for an interactive prompt that will allow you to experiment. 

6. Run `bundle exec tictactoe` to use the code located in this directory, ignoring other installed copies of this gem.

7. To install this gem onto your local machine, run `bundle exec rake install`. 

8. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).



### User stories
-------
```
As a User
I want to play with tic tac toe game
I want to play with another user instead of the compute
I want to add my game before playing
I want to see the grid
```

Tests
-------
### Unit tests
The following unit tests are used:
```
Game
  #player_1
    returns the first player
  #player_2
    returns the second player
  #play
    raises error if game is over
    calls the grid_full? method on the grid
    calls the player_wins? method on grid
    raises error if coordinates are not valid
    raises error if the same player wants to play the next turn too
    confirms player that he/she won the game
  #show_grid
    calls the show_grid method on grid
  #show_winner
    returns the winner, if there is any, otherwise nil

Grid
  #claim_field
    add player to the claimed field
  #valid_choice?
    returns true if the field is not taken
    returns false if the field is taken
  #show_grid
    returns the current grid
  #grid_full?
    returns true if there is no more empty field in the grid
    returns false if there is still at least one empty field in the grid
  #player_wins?
    returns true for player_1 if all fields are claimed in a row
    returns true for player_1 if all fields are claimed in a column
    returns true for player_1 if all fields are claimed in diagonal

Player
  #name
    returns the player's name
```
