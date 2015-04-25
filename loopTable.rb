currentTable.each {
  |team|
  flow :width => w, :height => hs do
    stack :width => "15%" do
      #para "#{team.Position}"
    end
    stack :width => "25%" do
      para"#{team.Name}"
    end
    stack :width => "7.5%" do
      para "#{team.Played}"
    end
    stack :width => "7.5%" do
      para "#{team.Won}"
    end
    stack :width => "7.5%" do
      para "#{team.Drawn}"
    end
    stack :width => "7.5%" do
      para "#{team.Lost}"
    end
    stack :width => "7.5%" do
      para "#{team.Scored}"
    end
    stack :width => "7.5%" do
      para "#{team.Conceded}"
    end
    stack :width => "7.5%" do
      para "#{team.GoalDif}"
    end
    stack :width => "7.5%" do
      para "#{team.Points}"
    end
  end
}
