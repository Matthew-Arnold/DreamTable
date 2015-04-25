class Team
    attr_accessor :name, :points, :played, :won, :lost, :drawn, :scored, 
                  :conceded
    def initialize(name, points, played, won, lost, drawn, scored, conceded)
        @name = name
        @points = points
        @won = won
        @lost = lost
        @drawn = drawn
        @scored = scored
        @conceded = conceded
    end

    def goalDif
        return @scored.to_i - @conceded.to_i
    end

    def display
        print "#{@name}\t#{@played} #{@won} #{@drawn} #{@lost} #{@scored}"
        print " #{@conceded} #{goalDif} #{@points}\n"
    end
end

