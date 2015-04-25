require_relative 'FixtureSet'
require_relative 'Table'
require_relative 'Team'

class TableOptimizer
    def TableOptimizer.getOptimalTable(currentTable, remainingFixtures, favTeamName)
        @@oldTable = Table.new(currentTable)
        bestTable = currentTable
        #bestTable.display

        favTeam = bestTable.getTeam(favTeamName)
        if favTeam == false
            exit(1)
        end
        puts "Favorite team is #{favTeam.name}"

        remainingFixtures.each {
            |fixture|
            puts "Match between #{fixture.home.name} and #{fixture.visitors.name}"

            if fixture.home.name == favTeam.name
                fixture.homeWin
            elsif fixture.visitors.name == favTeam.name
                fixture.visitorsWin
            elsif bestTable.currentPosition(fixture.home) <\
                bestTable.currentPosition(favTeam)

                if bestTable.currentPosition(fixture.visitors) <\
                    bestTable.currentPosition(favTeam)
                    #higher-ranked of the two teams wins
                    puts "It's a draw!!!"
                    fixture.draw
=begin
                    if bestTable.currentPosition(fixture.home) <\
                        bestTable.currentPosition(fixture.visitors)
                        fixture.visitorsWin
                    else
                        fixture.homeWin
                    end
=end
                else
                    fixture.visitorsWin
                end
            elsif bestTable.currentPosition(fixture.visitors) <\
                bestTable.currentPosition(favTeam)
                fixture.homeWin
            else
                #neither team is above favTeam
                fixture.draw
            end

            bestTable.reorderTable
        }

        return bestTable
    end
end
