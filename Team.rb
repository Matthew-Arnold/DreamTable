class Team
    attr_accessor :name, :points, :played, :won, :lost, :drawn, :scored, 
                  :conceded
    def initialize(name, points, played, won, lost, drawn, scored, conceded)
        @name = name
        @played = Integer(played)
        @points = Integer(points)
        @won = Integer(won)
        @lost = Integer(lost)
        @drawn = Integer(drawn)
        @scored = Integer(scored)
        @conceded = Integer(conceded)
    end

    def goalDif
        return @scored.to_i - @conceded.to_i
    end

    def display
        print "#{@name}\t#{@played} #{@won} #{@drawn} #{@lost} #{@scored}"
        print " #{@conceded} #{goalDif} #{@points}\n"
    end

    def compare(other)
        #puts "Compare #{@name} with #{other.name}"
        result = other.points <=> @points
=begin
        if result == 0
            thisDif = goalDif
            result = other.goalDif <=> thisDif
        end
=end
        #puts "Result is #{result}"
    end
end

