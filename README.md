# Doku_Autocomplete
Look up table for Sudoku and Sudoku like puzzles.

Hate Sudoku? Me too! Don't get cought off guard again, keep a reference to this lookup table and you will never find a Sudoku you can't solve.

## How it works

## Why it works
Every Sudoku board pattern can be reconstructed by using every possible first 3 rows values. Each column can be transposed into a row, this allows a quick solution lookup by seaching the possible 3 row combinations.

### Math
Permutations of [1,2,3,4,5,6,7,8,9] equals 362,880, that is 362,880 possible first rows.
Combinations of first row permutations equals 65,840,765,760, that is 65.8 billion first and second row pairs that need to be tested for doku pattern.
which results in 362,880 sets of possible first and second row pairs.
The third row is the intersection of second row pairs and the first rows, where the second rows possible pair are valid pairs for the first row.