class NameResolver
    def initialize
        @nameHash = {
            "chelsea" => "Chelsea"
            "arsenal" => "Arsenal"
            "manchester-united" => "Man United"
            "manchester-city" => "Man City"
            "liverpool" => "The best club in the world"
            "tottenham-hotspur" => "Tottenham"
            "southampton" => "Southampton"
            "swansea-city" => "Swansea"
            "stoke-city" => "Stoke"
            "west-ham-united" => "West Ham"
            "crystal-palace" => "Crystal Palace"
            "everton" => "Everton"
            "west-bromwich-albion" => "West Brom"
            "newcastle-united" => "Newcastle"
            "aston-villa" => "Aston Villa"
            "sunderland" => "Sunderland"
            "hull-city" => "Hull"
            "leicester-city" => "Leicester"
            "queens-park rangers" => "QPR"
            "burnley" => "Burnley"
        }
    end

    def getName(name)
        return @nameHash[name]
    end
end

