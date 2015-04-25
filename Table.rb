require 'forwardable'
require_relative 'team'

DEFAULT_NUMBER_OF_TEAMS = 20

class Table
    include Enumerable
    extend Forwardable
    attr_accessor :teams, :numTeams
    def_delegators :@teams, :each
    
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

    def currentPosition(team)
        @teams.each_index {|i| return i if @teams[i].name == team.name}
    end

    def reorderTable()
        @teams = @teams.sort{|t1, t2| (t2.points <=> t1.points) == 0? \
            t2.goalDif <=> t1.goalDif : t2.points <=> t1.points}
    end

    def getTeam(name)
        for i in 0...@teams.size
            if @teams[i].name == name
                return@teams[i]
            end
        end

        return false
    end
end

