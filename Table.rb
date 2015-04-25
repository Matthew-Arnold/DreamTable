require_relative 'team'
DEFAULT_NUMBER_OF_TEAMS = 20

class Table
    attr_accessor :teams, :numTeams
    
    def initialize(num = DEFAULT_NUMBER_OF_TEAMS)
        @teams = Array.new
        @numTeams = num
    end

    def display
        teams.each do |team| team.display end
    end

    def addTeam(team)
        if @teams.size < @numTeams
            @teams.push(team)
        end
    end
end

