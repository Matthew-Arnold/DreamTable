require 'nokogiri'
require_relative 'DataLoader'
require_relative 'Team'

Shoes.app do
  currentTable.each {
    |team|
  button("#{team.Name}")
  button("#{team.Points}")
}
end
