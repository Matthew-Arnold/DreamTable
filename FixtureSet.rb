require 'forwardable'

class FixtureSet
    include Enumerable
    extend Forwardable
    def_delegators :@fixtures, :each

    def initialize
        @fixtures = []
    end

    def addFixture(fixture)
        @fixtures.push(fixture)
    end
end
