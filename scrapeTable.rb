require 'rubygems'
require 'nokogiri'
require 'open-uri'
require_relative 'team'
require_relative 'table'

DATA_SOURCE = "http://www.bbc.com/sport/football/tables"

def readTable(leagueTable)

    page = Nokogiri::HTML(open(DATA_SOURCE))

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

        aTeam = Team.new(name, points, played, won, 
                         lost, drawn, scored, conceded)
        leagueTable.addTeam(aTeam)

    end
end

