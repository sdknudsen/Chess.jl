using Chess

function attackcount(board, sqNum, color)
squarecount(intersect(attacksto(board, Square(sqNum)), pieces(board, color)))
end

function squarestrengths(board, color = BLACK)
boardcount = map(piece -> attackCount(board, piece, color) - attackCount(board, piece, coloropp(color)), 1:64)
reshape(boardcount, 8, 8)
end
