Shoes.app do
  w = 500
  ws = 250
  h = 500
  hs = 30
  flow :width => w, :height => h do
    stack :width => "100%" do
      banner "THE TABLE"
    end
    flow :width => w, :height => hs do
      stack :width => "15%" do
        para "Position"
      end
      stack :width => "25%" do
        para "Team"
      end
      stack :width => "7.5%" do
        para "P"
      end
      stack :width => "7.5%" do
        para "W"
      end
      stack :width => "7.5%" do
        para "D"
      end
      stack :width => "7.5%" do
        para "L"
      end
      stack :width => "7.5%" do
        para "F"
      end
      stack :width => "7.5%" do
        para "A"
      end
      stack :width => "7.5%" do
        para "GD"
      end
      stack :width => "7.5%" do
        para "Pts"
      end
    end
    flow :width => w, :height => hs do
      stack :width => "15%" do
        para "1"
      end
      stack :width => "25%" do
        para(link("Chelsea"){alert"Chelsea!"})
      end
      stack :width => "7.5%" do
        para "32"
      end
      stack :width => "7.5%" do
        para "23"
      end
      stack :width => "7.5%" do
        para "7"
      end
      stack :width => "7.5%" do
        para "2"
      end
      stack :width => "7.5%" do
        para "65"
      end
      stack :width => "7.5%" do
        para "26"
      end
      stack :width => "7.5%" do
        para "39"
      end
      stack :width => "7.5%" do
        para "76"
      end
    end
  end
end
