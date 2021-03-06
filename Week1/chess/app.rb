# app.rb
# chess
require_relative("lib/rook.rb")
require_relative("lib/knight.rb")
require_relative("lib/bishop.rb")
require_relative("lib/queen.rb")
require_relative("lib/king.rb")
require_relative("lib/pawn.rb")
require_relative("lib/board.rb")

puts "..."
puts "......"
puts "........."
puts "LETS LEARN TO PLAY CHESS!"
puts "........."
puts "......"
puts "..."

#Rooks
#========================================
black_rook_left = Rook.new(1,8,"black")
black_rook_right = Rook.new(8,8,"black")
white_rook_left = Rook.new(1,1,"white")
white_rook_right = Rook.new(8,1,"white")
#Valid?==================================
puts "-" * 30
puts "Valid Rook movements"
puts "-" * 30
#black===================================
p black_rook_left.can_move?(1, 5) == "yes"
p black_rook_left.can_move?(5, 8) == "yes"
p black_rook_right.can_move?(7, 8) == "yes"
p black_rook_right.can_move?(8, 1) == "yes"
#white===================================
p white_rook_left.can_move?(1, 5) == "yes"
p white_rook_left.can_move?(4, 1) == "yes"
p white_rook_right.can_move?(8, 4) == "yes"
p white_rook_right.can_move?(3, 1) == "yes"
#Invalid?================================
puts "-" * 30
puts "Invalid Rook movements"
puts "-" * 30
#black===================================
p black_rook_left.can_move?(3, 6) == "no"
p black_rook_left.can_move?(2, 4) == "no"
p black_rook_right.can_move?(5, 3) == "no"
p black_rook_right.can_move?(3, 5) == "no"
#white===================================
p white_rook_left.can_move?(3, 3) == "no"
p white_rook_left.can_move?(4, 2) == "no"
p white_rook_right.can_move?(3, 5) == "no"
p white_rook_right.can_move?(5, 6) == "no"

#Knights
#========================================
black_knight_left = Knight.new(2,8,"black")
black_knight_right = Knight.new(7,8,"black")
white_knight_left = Knight.new(2,1,"white")
white_knight_right = Knight.new(7,1,"white")

#Valid?==================================
puts "-" * 30
puts "Valid knight movements"
puts "-" * 30
#black===================================
p black_knight_left.can_move?(3, 6) == "yes"
p black_knight_left.can_move?(1, 6) == "yes"
p black_knight_right.can_move?(6, 6) == "yes"
p black_knight_right.can_move?(8, 6) == "yes"
#white===================================
p white_knight_left.can_move?(1, 3) == "yes"
p white_knight_left.can_move?(3, 3) == "yes"
p white_knight_right.can_move?(8, 3) == "yes"
p white_knight_right.can_move?(6, 3) == "yes"
#Invalid?================================
puts "-" * 30
puts "Invalid knight movements"
puts "-" * 30
#black===================================
p black_knight_left.can_move?(2, 7) == "no"
p black_knight_left.can_move?(2, 5) == "no"
p black_knight_right.can_move?(5, 8) == "no"
p black_knight_right.can_move?(7, 3) == "no"
#white===================================
p white_knight_left.can_move?(2, 3) == "no"
p white_knight_left.can_move?(3, 2) == "no"
p white_knight_right.can_move?(3, 5) == "no"
p white_knight_right.can_move?(5, 6) == "no"

# Bishops
# ========================================
black_bishop_left = Bishop.new(3,8,"black")
black_bishop_right = Bishop.new(6,8,"black")
white_bishop_left = Bishop.new(3,1,"white")
white_bishop_right = Bishop.new(6,1,"white")

#Valid?==================================
puts "-" * 30
puts "Valid bishop movements"
puts "-" * 30
#black===================================
p black_bishop_left.can_move?(5, 6) == "yes"
p black_bishop_left.can_move?(8, 3) == "yes"
p black_bishop_right.can_move?(1, 3) == "yes"
p black_bishop_right.can_move?(8, 6) == "yes"
#white===================================
p white_bishop_left.can_move?(1, 3) == "yes"
p white_bishop_left.can_move?(8, 6) == "yes"
p white_bishop_right.can_move?(1, 6) == "yes"
p white_bishop_right.can_move?(8, 3) == "yes"
#Invalid?================================
puts "-" * 30
puts "Invalid bishop movements"
puts "-" * 30
#black===================================
p black_bishop_left.can_move?(3, 6) == "no"
p black_bishop_left.can_move?(4, 1) == "no"
p black_bishop_right.can_move?(5, 8) == "no"
p black_bishop_right.can_move?(7, 6) == "no"
#white===================================
p white_bishop_left.can_move?(3, 3) == "no"
p white_bishop_left.can_move?(2, 3) == "no"
p white_bishop_right.can_move?(5, 3) == "no"
p white_bishop_right.can_move?(7, 3) == "no"

# #Queens
# #========================================
black_queen = Queen.new(4,8,"black")
white_queen = Queen.new(4,1,"white")

#Valid?==================================
puts "-" * 30
puts "Valid queen movements"
puts "-" * 30
#black===================================
p black_queen.can_move?(4, 1) == "yes"
p black_queen.can_move?(8, 4) == "yes"
p black_queen.can_move?(1, 5) == "yes"
#white===================================
p white_queen.can_move?(1, 4) == "yes"
p white_queen.can_move?(4, 8) == "yes"
p white_queen.can_move?(8, 5) == "yes"
#Invalid?================================
puts "-" * 30
puts "Invalid queen movements"
puts "-" * 30
#black===================================
p black_queen.can_move?(3, 5) == "no"
p black_queen.can_move?(5, 3) == "no"
p black_queen.can_move?(2, 3) == "no"
#white===================================
p white_queen.can_move?(5, 3) == "no"
p white_queen.can_move?(3, 3) == "no"
p white_queen.can_move?(5, 4) == "no"

#Kings
#========================================
black_king = King.new(5,8,"black")
white_king = King.new(5,1,"white")

#Valid?==================================
puts "-" * 30
puts "Valid king movements"
puts "-" * 30
#black===================================
p black_king.can_move?(4, 8) == "yes"
p black_king.can_move?(5, 7) == "yes"
p black_king.can_move?(6, 7) == "yes"
#white===================================
p white_king.can_move?(4, 1) == "yes"
p white_king.can_move?(5, 2) == "yes"
p white_king.can_move?(6, 1) == "yes"
#Invalid?================================
puts "-" * 30
puts "Invalid king movements"
puts "-" * 30
#black===================================
p black_king.can_move?(4, 3) == "no"
p black_king.can_move?(8, 1) == "no"
p black_king.can_move?(8, 8) == "no"
#white===================================
p white_king.can_move?(5, 3) == "no"
p white_king.can_move?(3, 3) == "no"
p white_king.can_move?(5, 4) == "no"

# #Pawns
# #========================================
black_pawn1 = Pawn.new(1,7,"black")
black_pawn2 = Pawn.new(2,7,"black")
black_pawn3 = Pawn.new(3,7,"black")
black_pawn4 = Pawn.new(4,7,"black")
black_pawn5 = Pawn.new(5,7,"black")
black_pawn6 = Pawn.new(6,7,"black")
black_pawn7 = Pawn.new(7,7,"black")
black_pawn8 = Pawn.new(8,7,"black")
white_pawn1 = Pawn.new(1,2,"white")
white_pawn2 = Pawn.new(2,2,"white")
white_pawn3 = Pawn.new(3,2,"white")
white_pawn4 = Pawn.new(4,2,"white")
white_pawn5 = Pawn.new(5,2,"white")
white_pawn6 = Pawn.new(6,2,"white")
white_pawn7 = Pawn.new(7,2,"white")
white_pawn8 = Pawn.new(8,2,"white")

#Valid?==================================
puts "-" * 30
puts "Valid pawn movements"
puts "-" * 30
#black===================================
p black_pawn1.can_move?(1, 5) == "yes"
p black_pawn1.can_move?(1, 6) == "yes"
p black_pawn2.can_move?(2, 5) == "yes"
p black_pawn2.can_move?(2, 6) == "yes"
p black_pawn3.can_move?(3, 5) == "yes"
p black_pawn3.can_move?(3, 6) == "yes"
p black_pawn4.can_move?(4, 5) == "yes"
p black_pawn4.can_move?(4, 6) == "yes"
p black_pawn5.can_move?(5, 5) == "yes"
p black_pawn5.can_move?(5, 6) == "yes"
p black_pawn6.can_move?(6, 5) == "yes"
p black_pawn6.can_move?(6, 6) == "yes"
p black_pawn7.can_move?(7, 5) == "yes"
p black_pawn7.can_move?(7, 6) == "yes"
p black_pawn8.can_move?(8, 5) == "yes"
p black_pawn8.can_move?(8, 6) == "yes"
#white===================================
p white_pawn1.can_move?(1, 3) == "yes"
p white_pawn1.can_move?(1, 4) == "yes"
p white_pawn2.can_move?(2, 3) == "yes"
p white_pawn2.can_move?(2, 4) == "yes"
p white_pawn3.can_move?(3, 3) == "yes"
p white_pawn3.can_move?(3, 4) == "yes"
p white_pawn4.can_move?(4, 3) == "yes"
p white_pawn4.can_move?(4, 4) == "yes"
p white_pawn5.can_move?(5, 3) == "yes"
p white_pawn5.can_move?(5, 4) == "yes"
p white_pawn6.can_move?(6, 3) == "yes"
p white_pawn6.can_move?(6, 4) == "yes"
p white_pawn7.can_move?(7, 3) == "yes"
p white_pawn7.can_move?(7, 4) == "yes"
p white_pawn8.can_move?(8, 3) == "yes"
p white_pawn8.can_move?(8, 4) == "yes"
#Invalid?================================
puts "-" * 30
puts "Invalid pawn movements"
puts "-" * 30
#black===================================
p black_pawn1.can_move?(2, 6) == "no"
p black_pawn1.can_move?(3, 8) == "no"
p black_pawn2.can_move?(3, 6) == "no"
p black_pawn2.can_move?(5, 8) == "no"
p black_pawn3.can_move?(4, 6) == "no"
p black_pawn3.can_move?(6, 8) == "no"
p black_pawn4.can_move?(5, 6) == "no"
p black_pawn4.can_move?(7, 8) == "no"
p black_pawn5.can_move?(6, 6) == "no"
p black_pawn5.can_move?(8, 8) == "no"
p black_pawn6.can_move?(7, 6) == "no"
p black_pawn6.can_move?(4, 4) == "no"
p black_pawn7.can_move?(8, 6) == "no"
p black_pawn7.can_move?(5, 4) == "no"
p black_pawn8.can_move?(9, 6) == "no"
p black_pawn8.can_move?(6, 4) == "no"
#white===================================
p white_pawn1.can_move?(2, 3) == "no"
p white_pawn1.can_move?(2, 4) == "no"
p white_pawn2.can_move?(3, 3) == "no"
p white_pawn2.can_move?(3, 4) == "no"
p white_pawn3.can_move?(4, 3) == "no"
p white_pawn3.can_move?(4, 4) == "no"
p white_pawn4.can_move?(5, 3) == "no"
p white_pawn4.can_move?(5, 4) == "no"
p white_pawn5.can_move?(6, 3) == "no"
p white_pawn5.can_move?(6, 4) == "no"
p white_pawn6.can_move?(7, 3) == "no"
p white_pawn6.can_move?(7, 4) == "no"
p white_pawn7.can_move?(8, 3) == "no"
p white_pawn7.can_move?(8, 4) == "no"
p white_pawn8.can_move?(9, 3) == "no"
p white_pawn8.can_move?(7, 1) == "no"

game = Board.new

game.empty_board