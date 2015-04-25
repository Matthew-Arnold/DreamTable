require 'rubygems'
require 'nokogiri'
require 'open-uri'

DATA_SOURCE = "http://www.bbc.com/sport/football/tables"

page = Nokogiri::HTML(open(DATA_SOURCE))

data = page.css("tr")

#puts data[2]

for i in 2...data.size
    teamName = data[i]["data-team-slug"]
    gamesPlayed = data[i].css("td.points").text
    puts "#{teamName}\t#{gamesPlayed}"
end

