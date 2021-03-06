# Doku_Autocomplete
Look up table for Sudoku and Sudoku like puzzles.

Hate Sudoku? Me too! Don't get cought off guard again, keep a reference to this lookup table and you will never find a Sudoku you can't solve.

## How it works

## Why it works
Sudoku puzzles can be created by following different instructions stemming from a valid first row. For example,
given a list of digits 1-9, untouched that list creates the first row.

|   |   |   |   |   |   |   |   |   |   |   |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:| 
| 1 | 2 | 3 |   | 4 | 5 | 6 |   | 7 | 8 | 9 |

For the second row, shift the original list to the right by three spaces.

|   |   |   |   |   |   |   |   |   |   |   |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:| 
| 1 | 2 | 3 |   | 4 | 5 | 6 |   | 7 | 8 | 9 |
| 7 | 8 | 9 |   | 1 | 2 | 3 |   | 4 | 5 | 6 |

For the third row, shift the second row to the right by three spaces.

|   |   |   |   |   |   |   |   |   |   |   |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:| 
| 1 | 2 | 3 |   | 4 | 5 | 6 |   | 7 | 8 | 9 |
| 7 | 8 | 9 |   | 1 | 2 | 3 |   | 4 | 5 | 6 |
| 4 | 5 | 6 |   | 7 | 8 | 9 |   | 1 | 2 | 3 |

For the fourth row, shift the original list to the right by one spaces.

|   |   |   |   |   |   |   |   |   |   |   |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:| 
| 1 | 2 | 3 |   | 4 | 5 | 6 |   | 7 | 8 | 9 |
| 7 | 8 | 9 |   | 1 | 2 | 3 |   | 4 | 5 | 6 |
| 4 | 5 | 6 |   | 7 | 8 | 9 |   | 1 | 2 | 3 |
|   |   |   |   |   |   |   |   |   |   |   |
| 9 | 1 | 2 |   | 3 | 4 | 5 |   | 6 | 7 | 8 |

For the fifth row, shift the fourth row to the right by three spaces.

|   |   |   |   |   |   |   |   |   |   |   |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:| 
| 1 | 2 | 3 |   | 4 | 5 | 6 |   | 7 | 8 | 9 |
| 7 | 8 | 9 |   | 1 | 2 | 3 |   | 4 | 5 | 6 |
| 4 | 5 | 6 |   | 7 | 8 | 9 |   | 1 | 2 | 3 |
|   |   |   |   |   |   |   |   |   |   |   |
| 9 | 1 | 2 |   | 3 | 4 | 5 |   | 6 | 7 | 8 |
| 6 | 7 | 8 |   | 9 | 1 | 2 |   | 3 | 4 | 5 |

For the sixth row, shift the fifth row to the right by three spaces.

|   |   |   |   |   |   |   |   |   |   |   |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:| 
| 1 | 2 | 3 |   | 4 | 5 | 6 |   | 7 | 8 | 9 |
| 7 | 8 | 9 |   | 1 | 2 | 3 |   | 4 | 5 | 6 |
| 4 | 5 | 6 |   | 7 | 8 | 9 |   | 1 | 2 | 3 |
|   |   |   |   |   |   |   |   |   |   |   |
| 9 | 1 | 2 |   | 3 | 4 | 5 |   | 6 | 7 | 8 |
| 6 | 7 | 8 |   | 9 | 1 | 2 |   | 3 | 4 | 5 |
| 3 | 4 | 5 |   | 6 | 7 | 8 |   | 9 | 1 | 2 |
|   |   |   |   |   |   |   |   |   |   |   |

For the seventh row, shift the original list to the right by 2 spaces.

|   |   |   |   |   |   |   |   |   |   |   |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:| 
| 1 | 2 | 3 |   | 4 | 5 | 6 |   | 7 | 8 | 9 |
| 7 | 8 | 9 |   | 1 | 2 | 3 |   | 4 | 5 | 6 |
| 4 | 5 | 6 |   | 7 | 8 | 9 |   | 1 | 2 | 3 |
|   |   |   |   |   |   |   |   |   |   |   |
| 9 | 1 | 2 |   | 3 | 4 | 5 |   | 6 | 7 | 8 |
| 6 | 7 | 8 |   | 9 | 1 | 2 |   | 3 | 4 | 5 |
| 3 | 4 | 5 |   | 6 | 7 | 8 |   | 9 | 1 | 2 |
|   |   |   |   |   |   |   |   |   |   |   |
| 8 | 9 | 1 |   | 2 | 3 | 4 |   | 5 | 6 | 7 |

For the eighth row, shift the seventh row to the right by three spaces.

|   |   |   |   |   |   |   |   |   |   |   |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:| 
| 1 | 2 | 3 |   | 4 | 5 | 6 |   | 7 | 8 | 9 |
| 7 | 8 | 9 |   | 1 | 2 | 3 |   | 4 | 5 | 6 |
| 4 | 5 | 6 |   | 7 | 8 | 9 |   | 1 | 2 | 3 |
|   |   |   |   |   |   |   |   |   |   |   |
| 9 | 1 | 2 |   | 3 | 4 | 5 |   | 6 | 7 | 8 |
| 6 | 7 | 8 |   | 9 | 1 | 2 |   | 3 | 4 | 5 |
| 3 | 4 | 5 |   | 6 | 7 | 8 |   | 9 | 1 | 2 |
|   |   |   |   |   |   |   |   |   |   |   |
| 8 | 9 | 1 |   | 2 | 3 | 4 |   | 5 | 6 | 7 |
| 5 | 6 | 7 |   | 8 | 9 | 1 |   | 2 | 3 | 4 |

For the ninth and final row, shift the eighth row to the right by three spaces.

|   |   |   |   |   |   |   |   |   |   |   |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:| 
| 1 | 2 | 3 |   | 4 | 5 | 6 |   | 7 | 8 | 9 |
| 7 | 8 | 9 |   | 1 | 2 | 3 |   | 4 | 5 | 6 |
| 4 | 5 | 6 |   | 7 | 8 | 9 |   | 1 | 2 | 3 |
|   |   |   |   |   |   |   |   |   |   |   |
| 9 | 1 | 2 |   | 3 | 4 | 5 |   | 6 | 7 | 8 |
| 6 | 7 | 8 |   | 9 | 1 | 2 |   | 3 | 4 | 5 |
| 3 | 4 | 5 |   | 6 | 7 | 8 |   | 9 | 1 | 2 |
|   |   |   |   |   |   |   |   |   |   |   |
| 8 | 9 | 1 |   | 2 | 3 | 4 |   | 5 | 6 | 7 |
| 5 | 6 | 7 |   | 8 | 9 | 1 |   | 2 | 3 | 4 |
| 2 | 3 | 4 |   | 5 | 6 | 7 |   | 8 | 9 | 1 |

Those steps (a shift of 3,3,1, 3,3,1, 3,3,1 of any list) will produce a 9X9 valid Sudoku puzzle, you can verify it by checking each row, column and sub grid only has a single occurrence of the digits between 1 and 9.

Starting with a different list and following the same steps will produce another valid Sudoku. For example, starting with 4,8,9,3,7,1,5,2,6 will produce.

|   |   |   |   |   |   |   |   |   |   |   |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:| 
| 4 | 8 | 9 |   | 3 | 7 | 1 |   | 5 | 2 | 6 |
| 5 | 2 | 6 |   | 4 | 8 | 9 |   | 3 | 7 | 1 |
| 3 | 7 | 1 |   | 5 | 2 | 6 |   | 4 | 8 | 9 |
|   |   |   |   |   |   |   |   |   |   |   |
| 6 | 4 | 8 |   | 9 | 3 | 7 |   | 1 | 5 | 2 | 
| 1 | 5 | 2 |   | 6 | 4 | 8 |   | 9 | 3 | 7 |
| 9 | 3 | 7 |   | 1 | 5 | 2 |   | 6 | 4 | 8 |
|   |   |   |   |   |   |   |   |   |   |   |
| 2 | 6 | 4 |   | 8 | 9 | 3 |   | 7 | 1 | 5 |
| 7 | 1 | 5 |   | 2 | 6 | 4 |   | 8 | 9 | 3 |
| 8 | 9 | 3 |   | 7 | 1 | 5 |   | 2 | 6 | 4 |

While this new Sudoku puzzle looks completely different, it is not. taking the original two list we can create a mapping of the first Sudoku and the second.
let 1 = 4, 2 = 8, 3 = 9, 4 = 3, 5 = 7, 6 = 1, 7 = 5, 8 = 2, 9 = 6.
Now given the first solved Sudoku puzzle, and a partially solved second Sudoku puzzle, can you solve the puzzle only using the mapping?

let 1 = 4, 2 = 8, 3 = 9, 4 = 3, 5 = 7, 6 = 1, 7 = 5, 8 = 2, 9 = 6.

|   |   |   |   |   |   |   |   |   |   |   | \| |   |   |   |   |   |   |   |   |   |   |   |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|-|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:| 
| 1 | 2 | 3 |   | 4 | 5 | 6 |   | 7 | 8 | 9 | \| | 4 | 8 | _ |   | 3 | _ | 1 |   | _ | 2 | 6 |
| 7 | 8 | 9 |   | 1 | 2 | 3 |   | 4 | 5 | 6 | \| | 5 | 2 | 6 |   | 4 | _ | 9 |   | 3 | 7 | 1 |
| 4 | 5 | 6 |   | 7 | 8 | 9 |   | 1 | 2 | 3 | \| | 3 | _ | 1 |   | 5 | 2 | 6 |   | 4 | 8 | 9 |
|   |   |   |   |   |   |   |   |   |   |   | \| |   |   |   |   |   |   |   |   |   |   |   |
| 9 | 1 | 2 |   | 3 | 4 | 5 |   | 6 | 7 | 8 | \| | 6 | 4 | _ |   | 9 | 3 | 7 |   | 1 | 5 | _ | 
| 6 | 7 | 8 |   | 9 | 1 | 2 |   | 3 | 4 | 5 | \| | _ | 5 | 2 |   | _ | 4 | 8 |   | 9 | _ | 7 |
| 3 | 4 | 5 |   | 6 | 7 | 8 |   | 9 | 1 | 2 | \| | 9 | 3 | 7 |   | 1 | 5 | 2 |   | 6 | 4 | 8 |
|   |   |   |   |   |   |   |   |   |   |   | \| |   |   |   |   |   |   |   |   |   |   |   |
| 8 | 9 | 1 |   | 2 | 3 | 4 |   |5  | 6 | 7 | \| | _ | 6 | 4 |   | _ | 9 | 3 |   | 7 | 1 | 5 |
| 5 | 6 | 7 |   | 8 | 9 | 1 |   | 2 | 3 | 4 | \| | 7 | 1 | 5 |   | 2 | 6 | 4 |   | 8 | 9 | 3 |
| 2 | 3 | 4 |   | 5 | 6 | 7 |   | 8 | 9 | 1 | \| | 8 | 9 | 3 |   | 7 | 1 | 5 |   | 2 | _ | 4 |

Absolutely, and its kind of fun! This is because the Sudoku pattern is a substitution cypher, where the plain text is a set of repeating 9 symbols that follow the rules of Sudoku. The steps we followed created a unique cipher-pattern that can be mapped to infinitely different set of 9 symbols used to seed the first row, but the most common symbols we encounter is the digits 1-9.

Sudoku pattern is restricted by the length of the list of symbols used along with the size of the sub grid. This creates repetition in sudoku solutions allowing all calculation needed to solve any Sudoku problem to be found in the first 3 rows of all possible patterns, or all possible floors.
Because of that, every Sudoku board pattern can be reconstructed by transposing column trios and searching for the pattern in all possible floors. 

For example, take the first row and organize it as the first sub-grid of a tower. Because this symbol set represents the seeding pattern to produce any key mapping, we can use it later to reconstruct second and third floors. 

|   |   |   |
|:-:|:-:|:-:|
| 4 | 5 | 3 |
| 8 | 2 | 7 |
| 9 | 6 | 1 |
|   |   |   |

Using any rotations or shifts we can create the second and third grids in a tower, out of convenience we will use the ones from the example above.

|   |   |   |
|:-:|:-:|:-:|
| 4 | 5 | 3 |
| 8 | 2 | 7 |
| 9 | 6 | 1 |
|   |   |   |
| 3 | 4 | 5 |
| 7 | 8 | 2 |
| 1 | 9 | 6 |
|   |   |   |
| 5 | 3 | 4 |
| 2 | 7 | 8 |
| 6 | 1 | 9 |
|   |   |   |

Now taking a random floor, for example,

|   |   |   |   |   |   |   |   |   |   |   |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:| 
| 6 | 8 | 1 |   | 7 | 4 | 2 |   | 9 | 5 | 3 |
| 2 | 4 | 5 |   | 8 | 3 | 9 |   | 1 | 6 | 7 |
| 3 | 9 | 7 |   | 1 | 5 | 6 |   | 8 | 2 | 4 |
|   |   |   |   |   |   |   |   |   |   |   |

we can use the first sub-grid of our valid tower to create a key mapping that will transform our second and third sub-grid into valid second and third grid values of the random floor.
let tower1 key mapping be, {4=6, 5=8, 3=1, 8=2, 2=4, 7=5, 9=6, 6=1, 1=9}, we get.

|   |   |   |   |   |   |   |   |   |   |   |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:| 
| 6 | 8 | 1 |   | 7 | 4 | 2 |   | 9 | 5 | 3 |
| 2 | 4 | 5 |   | 8 | 3 | 9 |   | 1 | 6 | 7 |
| 3 | 9 | 7 |   | 1 | 5 | 6 |   | 8 | 2 | 4 |
|   |   |   |   |   |   |   |   |   |   |   |
| 1 | 6 | 8 |   |   |   |   |   |   |   |   |
| 5 | 2 | 4 |   |   |   |   |   |   |   |   |
| 9 | 6 | 1 |   |   |   |   |   |   |   |   |
|   |   |   |   |   |   |   |   |   |   |   |
| 8 | 1 | 6 |   |   |   |   |   |   |   |   |
| 4 | 5 | 2 |   |   |   |   |   |   |   |   |
| 1 | 9 | 6 |   |   |   |   |   |   |   |   |
|   |   |   |   |   |   |   |   |   |   |   |

Using the same method for the next tower, let tower2 key mapping be, { 4=7, 5=4, 3=2, 8=8, 2=3, 7=9, 9=1, 6=5, 1=6}, we get.

|   |   |   |   |   |   |   |   |   |   |   |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:| 
| 6 | 8 | 1 |   | 7 | 4 | 2 |   | 9 | 5 | 3 |
| 2 | 4 | 5 |   | 8 | 3 | 9 |   | 1 | 6 | 7 |
| 3 | 9 | 7 |   | 1 | 5 | 6 |   | 8 | 2 | 4 |
|   |   |   |   |   |   |   |   |   |   |   |
| 1 | 6 | 8 |   | 2 | 7 | 4 |   |   |   |   |
| 5 | 2 | 4 |   | 9 | 8 | 3 |   |   |   |   |
| 9 | 6 | 1 |   | 6 | 1 | 5 |   |   |   |   |
|   |   |   |   |   |   |   |   |   |   |   |
| 8 | 1 | 6 |   | 4 | 2 | 7 |   |   |   |   |
| 4 | 5 | 2 |   | 3 | 9 | 8 |   |   |   |   |
| 1 | 9 | 6 |   | 5 | 6 | 1 |   |   |   |   |
|   |   |   |   |   |   |   |   |   |   |   |

And again for tower3, let tower3 key mapping be, {4=9, 5=5, 3=3, 8=1, 2=6, 7=7, 9=8, 6=2, 1=4}, we get.

|   |   |   |   |   |   |   |   |   |   |   |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:| 
| 6 | 8 | 1 |   | 7 | 4 | 2 |   | 9 | 5 | 3 |
| 2 | 4 | 5 |   | 8 | 3 | 9 |   | 1 | 6 | 7 |
| 3 | 9 | 7 |   | 1 | 5 | 6 |   | 8 | 2 | 4 |
|   |   |   |   |   |   |   |   |   |   |   |
| 1 | 6 | 8 |   | 2 | 7 | 4 |   | 3 | 9 | 5 |
| 5 | 2 | 4 |   | 9 | 8 | 3 |   | 7 | 1 | 6 |
| 9 | 6 | 1 |   | 6 | 1 | 5 |   | 4 | 8 | 2 |
|   |   |   |   |   |   |   |   |   |   |   |
| 8 | 1 | 6 |   | 4 | 2 | 7 |   | 5 | 3 | 9 |
| 4 | 5 | 2 |   | 3 | 9 | 8 |   | 6 | 7 | 1 |
| 1 | 9 | 6 |   | 5 | 6 | 1 |   | 2 | 4 | 8 |
|   |   |   |   |   |   |   |   |   |   |   |

The repeating pattern allows a quick solution by lookup while only keeping a list of all possible valid second and third row symbol combinations.

### Math
First row of a floor is a given, there can only be one unique pattern for none repeating set of 9 symbols. In contrast, if we were generating all possible first row of symbols permutations, we would have to test and store 362,880 rows. This is because there is 362,880 permutations of [1,2,3,4,5,6,7,8,9]. Because we recognize Sudoku as a substitution cipher, we can reduce our search space by 362,880 times.

Second row is the first row and every possible permutations of 
the first row that is valid Sudoku rules. A search space of 362,880 resulting in a list of possible second rows with the length of 362,880. Remember if we did not recognize the cypher pattern, this search space would increase by 362,880 times.

Third row is possible second rows and every possible permutations of the first row, which makes a search space of 131,681,894,400, resulting in 2,612,736 possible floors.
In contrast restricting symbols to 1-9 will create 948,109,639,680, possible floors. [Sudopedia](http://sudopedia.enjoysudoku.com/Mathematics_of_Sudoku.html#5.2C524.2C751.2C496.2C156.2C892.2C842.2C531.2C225.2C600) suggests that 2,612,736 possible floors can be reduced to 416 unique floors, but this has not been verified here yet.

### Row Compression
Every row is the combination of 3 sub-rows. Every sub-row is a 3 trio of 9 possible symbols, a total of 84 possible combinations. To reduce memory usage, we can encode each sub-row with a corresponding ascii character. For example, [1,2,3,4,5,6,7,8,9] could encode to [ '!' , '^' , '&' ]. In reversed order, [ '!' , '^' , '&' ] will decode to [1,2,3,4,5,6,7,8,9]. This encoding provides significant lower memory use at a very low cost of execution time.