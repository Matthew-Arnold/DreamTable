require 'rubygems'
require 'nokogiri'
require 'open-uri'
require_relative 'Team'
require_relative 'Table'
require_relative 'NameResolver'
require_relative 'FixtureSet'
require_relative 'Fixture'

TABLE_SOURCE = "http://www.bbc.com/sport/football/tables"
FIXTURE_SOURCE = "http://www.premierleague.com/en-gb/matchday/matches.html?\
                  paramClubId=ALL&paramComp_8=true&view=.dateSeason"

def readTable(leagueTable)

    page = Nokogiri::HTML(open(TABLE_SOURCE))

    data = page.css("tr")

    for i in 2...data.size
        name = data[i]["data-team-slug"]
        points = data[i].css("td.points").text
        played = data[i].css("td.played").text
        #puts "Played = #{played}"
        won = data[i].css("td.won").text
        drawn = data[i].css("td.drawn").text
        lost = data[i].css("td.lost").text
        scored = data[i].css("td.for").text
        conceded = data[i].css("td.against").text

        aTeam = Team.new(NameResolver.instance.getName(name), points, played, won, 
                         lost, drawn, scored, conceded)
        #print "Added team: "
        #aTeam.display
        leagueTable.addTeam(aTeam)

    end
end

def getRemainingFixtures(fixtureList, currentTable)
    page = Nokogiri::HTML(open(FIXTURE_SOURCE)) 
    tables = page.css("table.contentTable")

    tables.each {
        |table|

        fixtures = table.css("tr:not([class~=fixturechangetextclosed])")

        fixtures.each {
            |fixture|
            allTeams = fixture.css("td.clubs").text
            teams = allTeams.split('\n')

            teams.each {
                |matchTeams|
                theTeams = matchTeams.split(" v ")

                #puts "1: #{theTeams[0]}\t2: #{theTeams[1]}"

                team1Name = NameResolver.instance.getName(theTeams[0].strip)
                team2Name = NameResolver.instance.getName(theTeams[1].strip)

                team1 = currentTable.getTeam(team1Name)
                team2 = currentTable.getTeam(team2Name)

                #puts "Adding fixture between #{team1Name} and #{team2Name}"

                fixtureList.addFixture(Fixture.new(team1, team2))
            }
        }
    }
end
