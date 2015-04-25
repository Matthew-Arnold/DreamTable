require_relative 'scrapeTable'
require_relative 'team'
require_relative 'table'

TABLE_SIZE = 20

leagueTable = Table.new(TABLE_SIZE)
readTable(leagueTable)
leagueTable.display
