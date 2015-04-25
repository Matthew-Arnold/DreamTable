require_relative 'DataLoader'
require_relative 'Team'
require_relative 'Table'

TABLE_SIZE = 20

leagueTable = Table.new(TABLE_SIZE)
readTable(leagueTable)
leagueTable.display
