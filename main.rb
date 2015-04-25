require_relative 'DataLoader'
require_relative 'Team'
require_relative 'Table'
require_relative 'FixtureSet'
require_relative 'TableOptimizer'


TABLE_SIZE = 20

leagueTable = Table.new(TABLE_SIZE)
readTable(leagueTable)
remainingFixtures = FixtureSet.new
getRemainingFixtures(remainingFixtures, leagueTable)

leagueTable.display

puts "\n\nGenerating optimal table\n\n"

bestTable = TableOptimizer.getOptimalTable(leagueTable, remainingFixtures, "Liverpool")

leagueTable.display

