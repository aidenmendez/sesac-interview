# SESAC Interview: Save the Princess (Twice!)

<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li><a href="#getting-started">Getting Started</a></li>
      <ol>
        <li><a href="#run-in-HackerRank">Run in HackerRank</a></li>
        <li><a href="#install-locally">Install Locally</a></li>
      </ol>
    <li><a href="#challenge-1">Challenge 1</a></li>
      <ol>
        <li><a href="#design">Design</a></li>
      </ol>
     <li><a href="#challenge-2">Challenge 2</a></li>
      <ol>
        <li><a href="#design">Design</a></li>
      </ol>
  </ol>
</details>


## About The Project

This is my submission for SESAC's [Save the Princess](https://www.hackerrank.com/challenges/saveprincess) and [Save the Princess 2](https://www.hackerrank.com/challenges/saveprincess2) challenges on [HackerRank](https://www.hackerrank.com/). The runner files for HackerRank can be found in the root directory. Both test suites achieve 100% test coverage.

### Built With

* [RSpec](https://rspec.info/)
* [Simplecov](https://github.com/simplecov-ruby/simplecov)


## Getting Started
### Run in HackerRank

1. First Challenge: visit [Save the Princess](https://www.hackerrank.com/challenges/saveprincess) and paste the contents of [the Challenge 1 runner file](https://github.com/aidenmendez/sesac-interview/blob/main/BSP1_hackerrank_runner.rb) in the editor. Click _Run Code_ to start game.
2. Second Challenge: visit [Save the Princess 2](https://www.hackerrank.com/challenges/saveprincess2) and paste the contents of [the Challenge 2 runner file](https://github.com/aidenmendez/sesac-interview/blob/main/BSP2_hackerrank_runner.rb) in the editor. Click _Run Code_ to start game.

### Install Locally

1. Fork and Clone the repo
   ```
   git clone https://github.com/aidenmendez/sesac-interview
   ```
2. Install gems
   ```
   bundle install 
   ```
3. Run tests
   ```
   bundle exec rspec botSavesPrincess1/spec
   bundle exec rspec botSavesPrincess2/spec
   ```

## Challenge 1

My initial notes when reading the prompt for this project were:

- The input will be an integer and an array.
- There will need to be at least three classes for the "objects" in the game: Bot, Princess, and Grid.
- Once these have been created, there will need to be a way to move the Bot gamepiece, so I'll also need a Navigation class.
- The Grid is like a validated map that could be used by the Bot and Princess, so position validate user inputs there before creating "gamepieces". 

### Design

#### Grid
The user input is used to create a Grid, which validates the size and grid array. If no errors are raised, the grid is passed to the Bot and Princess objects during instantiation. This prevents the B & P from being created using invalid input.

#### Princess
The Princess doesn't move, so it's position doesn't need to be mutable. Abiding by the matrix convention, there are only four possible positions it can be in: (0,0), (0,n-1), (n-1, 0), and (n-1, n-1). Iterating through these four coordinates yields the position.

#### Bot
Since it always began in the center, the Bot's location was determined by calculating the grid's midpoint. The column and rows were also made mutable to the object's position could be updated as it's moved in Navigation.

#### Gamepiece Location
Originally I thought of storing the Bot and Princess grid locations on the Grid object. I decided to move these methods to their respective objects. The objects can now be updated in Navigation without Grid needing to be passed in as a parameter.

#### Navigation
Navigation Logic: In order for the Bot to traverse to the Princess, the Navigation class compares the Bot's column and row positions to the Princess's. The Bot's vertical position is then increased or decreased  by increments of 1 until it equals the Princess's vertical position. The process is then repeated for the Bot's horizontal position. The movements shoveled into an array while comparing and returned.

## Challenge 2
### Design

Notes taken about updates:

 #### Bot
 
 `row` and `col` will be passed as parameters, so midpoints no longer need to be calculated. I simply have to replace the midpoint calculation from _BSP1_ with the `r, c` parameters.
 
 #### Princess

The `locate` method will be updated to search each row and column of the grid for `p`. Since the solution to _Bot Saves Princess_ only searches for the princess in the four corners, I need to update the method to search row-by-row. By using `each_with_index`, I'm able to determine the `row` value and then search for the index of `p` to determine the `column` value.

#### Navigation

The `get_directions` method will be adapted to `get_next_move`. The primary difference is the updated method will only return the next move rather than an array of all moves.


### Refactor Notes
My refactoring included removing a few extraneous variables and improving the semantics for the Bot attributes. I also added simplecov gem to ensure 100% coverage.
