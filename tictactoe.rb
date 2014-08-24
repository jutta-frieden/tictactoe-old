$p1=' '
$p2=' '
$p3=' '
$p4=' '
$p5=' '
$p6=' '
$p7=' '
$p8=' '
$p9=' '

def main
    draw_board
    player_input
end


def draw_board
    puts '||'.insert(0,$p1).insert(2,$p2).insert(4,$p3)
    puts '_ _ _'
    puts '||'.insert(0,$p4).insert(2,$p5).insert(4,$p6)
    puts '_ _ _'
    puts '||'.insert(0,$p7).insert(2,$p8).insert(4,$p9)
end

def player_input
    print "Player 1, it's your turn:"
    input = gets.chomp.to_i
    input = Integer(input)
    # rescue  Exception e

    while input!=1..9
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

    draw_board
end


main