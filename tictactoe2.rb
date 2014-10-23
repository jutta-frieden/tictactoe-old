# Define our boolean variable which decides whether or not the game is over yet
$w=false

# An array which will keep count of nine global variables

$a=[0,' ',' ',' ',' ',' ',' ',' ',' ',' ']

# Our main function which will run the game

def main
    draw_board
    while $w==false && $a.any? {|e| e == ' '}
        player_1_input
        winner1
        if $w==true
            break
        end
        if $a.all? { |e| e!=' '}
            break
        end
        player_2_input
        winner2
    end
    if $w==false 
        puts "Even! There is no winner this time. Why don't you play again?"
    end

end

# Function to draw the board to the terminal

def draw_board
    puts '||'.insert(0,$a[1]).insert(2,$a[2]).insert(4,$a[3])
    puts '_ _ _'
    puts '||'.insert(0,$a[4]).insert(2,$a[5]).insert(4,$a[6])
    puts '_ _ _'
    puts '||'.insert(0,$a[7]).insert(2,$a[8]).insert(4,$a[9])
end




# Function to get input by player 1

def player_1_input
    print "Player 1, it's your turn:"
    input = gets.chomp.to_i

     while input<1 || input>9 || $a[input] != ' '
        if input<1 || input>9
            print "You need to put a number between 1 and 9, try again:"
        else
            print "Sorry, this field is already taken, please choose a different field:"
        end
        input = gets.chomp.to_i
    end
 
    $a[input]='X'

    draw_board
end

# Check whether player 1 has won

def winner1
 if  [$a[1,3], $a[4,3], $a[7,3], [$a[1],$a[4],$a[7]], [$a[2],$a[5],$a[8]], [$a[3],$a[6],$a[9]], [$a[1],$a[5],$a[9]], [$a[3],$a[5],$a[7]]].any? { |e| e==['X','X','X']} 
        puts "Congratulations, player 1 has won!"
        $w=true
    end
end

# Function to get input by player 2

def player_2_input
    print "Player 2, it's your turn:"
    input = gets.chomp.to_i

    # while input<1 || input>9
    #     puts "You need to put a number between 1 and 9, try again:"
    #     input = gets.chomp.to_i
    # end

    while input<1 || input>9 || $a[input] != ' '
        if input<1 || input>9
            print "You need to put a number between 1 and 9, try again:"
        else
            print "Sorry, this field is already taken, please choose a different field:"
        end
        input = gets.chomp.to_i
    end

    $a[input]='O'
    
    draw_board
end

# Check whether player 2 has won

def winner2
    if  [$a[1,3], $a[4,3], $a[7,3], [$a[1],$a[4],$a[7]], [$a[2],$a[5],$a[8]], [$a[3],$a[6],$a[9]], [$a[1],$a[5],$a[9]], [$a[3],$a[5],$a[7]]].any? { |e| e==['O','O','O']} 
        puts "Congratulations, player 2 has won!"
        $w=true   
    end
end

main