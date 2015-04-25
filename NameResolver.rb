require 'singleton'

class NameResolver
    include Singleton

    def initialize
        @nameHash = {
            "chelsea" => "Chelsea",
            "arsenal" => "Arsenal",
            "manchester-united" => "Man United",
            "manchester-city" => "Man City",
            "liverpool" => "Liverpool",
            "tottenham-hotspur" => "Tottenham",
            "southampton" => "Southampton",
            "swansea-city" => "Swansea",
            "stoke-city" => "Stoke",
            "west-ham-united" => "West Ham",
            "crystal-palace" => "Crystal Palace",
            "everton" => "Everton",
            "west-bromwich-albion" => "West Brom",
            "newcastle-united" => "Newcastle",
            "aston-villa" => "Aston Villa",
            "sunderland" => "Sunderland",
            "hull-city" => "Hull",
            "leicester-city" => "Leicester",
            "queens-park-rangers" => "QPR",
            "burnley" => "Burnley",
            "Southampton" => "Southampton",
            "Spurs" => "Tottenham",
            "Burnley" => "Burnley",
            "Leicester" => "Leicester",
            "Crystal Palace" => "Crystal Palace",
            "Hull" => "Hull",
            "Newcastle" => "Newcastle",
            "Swansea" => "Swansea",
            "QPR" => "QPR",
            "West Ham" => "West Ham",
            "Stoke" => "Stoke",
            "Sunderland" => "Sunderland",
            "West Brom" => "West Brom",
            "Liverpool" => "Liverpool",
            "Man City" => "Man City",
            "Aston Villa" => "Aston Villa",
            "Everton" => "Everton",
            "Man Utd" => "Man United",
            "Arsenal" => "Arsenal",
            "Chelsea" => "Chelsea"
        }
    end

    def getName(name)
        return @nameHash[name]
    end
end

