WIN_POINTS = 3
DRAW_POINTS = 1
LOSS_POINTS = 0

class Fixture
    attr_accessor :home, :visitors

    def initialize(homeTeam, visitingTeam)
        @home = homeTeam
        @visitors = visitingTeam
    end

    def homeWin(homeGoals = 1, awayGoals = 0)
        self.incrementPlayed(homeGoals, awayGoals)
        @home.won += 1
        @home.points += WIN_POINTS

        @visitors.lost += 1
        @visitors.points += LOSS_POINTS
    end

    def visitorsWin(homeGoals = 0, awayGoals = 1)
        self.incrementPlayed(homeGoals, awayGoals)
        @visitors.won += 1
        @visitors.points += WIN_POINTS

        @home.lost += 1
        @home.points += LOSS_POINTS
    end

    def draw(homeGoals = 0, awayGoals = 0)
        self.incrementPlayed(homeGoals, awayGoals)
        @home.drawn += 1
        @home.points += DRAW_POINTS

        @visitors.drawn += 1
        @visitors.points += DRAW_POINTS
    end

    def self.incrementPlayed(homeGoals, awayGoals)
        @home.played += 1
        @home.scored += homeGoals
        @home.conceded += awayGoals

        @visitors.played += 1
        @visitors.scored += awayGoals
        @visitors.conceded += homeGoals
    end
end
