using Chess

function attackcount(board, sqnum, color)
squarecount(intersect(attacksto(board, Square(sqnum)), pieces(board, color)))
end

function squarestrengths(board, color = BLACK)
boardcount = map(piece -> attackcount(board, piece, color) - attackcount(board, piece, coloropp(color)), 1:64)
reshape(boardcount, 8, 8)
end

## Example usage
# b = startboard()
# squarestrengths(b)
