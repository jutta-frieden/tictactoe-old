# Define global variables for the 9 fields we have in TicTacToe

$p1=' '
$p2=' '
$p3=' '
$p4=' '
$p5=' '
$p6=' '
$p7=' '
$p8=' '
$p9=' '

# An array which will keep count of our global variables

$a=[0, $p1, $p2, $p3, $p4, $p5, $p6, $p7, $p8, $p9]

# Our main function which will run the game

def main
    draw_board
    player_1_input
    player_2_input
end

# Function to draw the board to the terminal

def draw_board
    puts '||'.insert(0,$p1).insert(2,$p2).insert(4,$p3)
    puts '_ _ _'
    puts '||'.insert(0,$p4).insert(2,$p5).insert(4,$p6)
    puts '_ _ _'
    puts '||'.insert(0,$p7).insert(2,$p8).insert(4,$p9)
end

# Function to get input by player 1

def player_1_input
    print "Player 1, it's your turn:"
    input = gets.chomp.to_i

    while input<1 || input>9
        puts "You need to put a number between 1 and 9, try again:"
        input = gets.chomp.to_i
    end

    case input
    when 1
        $p1='X'
    when 2
        $p2='X'
    when 3
        $p3='X'
    when 4
        $p4='X'
    when 5
        $p5='X'
    when 6
        $p6='X'
    when 7
        $p7='X'
    when 8
        $p8='X'
    when 9
        $p9='X'
    end

    $a=[0, $p1, $p2, $p3, $p4, $p5, $p6, $p7, $p8, $p9]

    draw_board
end

# Function to get input by player 2

def player_2_input
    print "Player 2, it's your turn:"
    input = gets.chomp.to_i

    while input<1 || input>9
        puts "You need to put a number between 1 and 9, try again:"
        input = gets.chomp.to_i
    end

    while $a[input] != ' '
        print "Sorry, this field is already taken, please choose a different field:"
        input = gets.chomp.to_i
    end

    case input
    when 1
        $p1='O'
    when 2
        $p2='O'
    when 3
        $p3='O'
    when 4
        $p4='O'
    when 5
        $p5='O'
    when 6
        $p6='O'
    when 7
        $p7='O'
    when 8
        $p8='O'
    when 9
        $p9='O'
    end
    
    $a=[0, $p1, $p2, $p3, $p4, $p5, $p6, $p7, $p8, $p9]
    
    draw_board
end


main