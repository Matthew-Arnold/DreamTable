require 'rubygems'
require 'nokogiri'
require 'open-uri'
require_relative 'Team'
require_relative 'Table'
require_relative 'NameResolver'
require_relative 'FixtureSet'
require_relative 'Fixture'

TABLE_SOURCE = "http://www.bbc.com/sport/football/tables"
FIXTURE_SOURCE = URI.parse(URI.encode("http://www.premierleague.com/en-gb/matchday/matches.html?\
                  paramClubId=ALL&paramComp_8=true&view=.dateSeason"))

def readTable(leagueTable)

    page = Nokogiri::HTML(open(TABLE_SOURCE))

    data = page.css("tr")

    for i in 2...data.size
        name = data[i]["data-team-slug"]
        points = data[i].css("td.points").text
        played = data[i].css("td.played").text
        won = data[i].css("td.won").text
        drawn = data[i].css("td.drawn").text
        lost = data[i].css("td.lost").text
        scored = data[i].css("td.for").text
        conceded = data[i].css("td.against").text

        aTeam = Team.new(NameResolver.instance.getName(name), points, played, won,
                         lost, drawn, scored, conceded)
        leagueTable.addTeam(aTeam)

    end
end

def getRemainingFixtures(fixtureList)
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

                #puts "Adding fixture between #{team1Name} and #{team2Name}"

                fixtureList.addFixture(Fixture.new(team1Name, team2Name))
            }
        }
    }
end

fixtureList = FixtureSet.new
getRemainingFixtures(fixtureList)

fixtureList.each {
    |fixture|
    puts "#{fixture.home}\t#{fixture.visitors}"
}
