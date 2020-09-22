class Board

    attr_accessor :cells 

    def initialize
        @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    end 

    def reset!
        @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    end 

    def display
        puts " #{self.cells[0]} | #{self.cells[1]} | #{self.cells[2]} "
        puts "-----------"
        puts " #{self.cells[3]} | #{self.cells[4]} | #{self.cells[5]} "
        puts "-----------"
        puts " #{self.cells[6]} | #{self.cells[7]} | #{self.cells[8]} "
    end 

    def position(num)
        self.cells[num.to_i - 1] 
    end 

    def full?
        self.cells.none? {|cell| cell == " "}
    end 

    def turn_count
        not_turns = self.cells.count(" ")
        9 - not_turns
    end 

    def taken?(num)
        position(num) == "X" || position(num) == "O" 
    end 

    def valid_move?(input)
        input = input.to_i
        !(taken?(input)) && input.between?(1, 9)
    end 

    def update(input, player)
        input = input.to_i
        cells[input - 1] = player.token
    end 

end 