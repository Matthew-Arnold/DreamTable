Shoes.app do
  w = 500
  h = 500
  hs = 50
  flow :width => w, :height => h do
    stack :width => "100%" do
      banner "THE TABLE"
    end
    flow :width => w, :height => hs do
      stack :width => "50%" do
        para "The teams:"
      end
      stack :width => "50%" do
        para "The points:"
      end
     end
     flow :width => w, :height => hs do
       stack :width => "50%" do
         button( "Chelsea" ) do
          alert(para "  Chelsea's Dream Scenario:\n",
          "You win out. You buy Tim Howard, DeAndre Yedlin, and the entire USMNT, causing Jurgen Klinsmann to orgasm when he finds out his squad have won the Premier League. The USMNT then goes undefeated in the 2018 FIFA World Cup in Russia.
          Klinsmann is a national hero (in America), and American athletes everywhere retire from their respective sports to become futbol stars. The MLS also becomes the world's premiere Football league.\n\n")
          end
        end
        stack :width => "50%" do
          para "99"
        end
      end
      flow :width => w, :height => hs do
        stack :width => "50%" do
          button( "Liverpool" ) do
            alert(para "  Liverpool's Dream Scenario:\n",
            "You win. Hard. Also, you sell all of your players and replace them all with gingers, which officially makes your team the reddest team in the EPL. Of course, O Captain My Captain Stevie G stays, with his black hair, and announces that he will be playing at Liverpool for the rest of his days.\n\n")
          end
        end
        stack :width => "50%" do
          "88"
        end
      end
      flow :width => w, :height => hs do
        stack :width => "50%" do
          button( "Tottenham Hotspur" ) do
            alert(para "  Tottenham's Dream Scenario:\n",
            "DeAndre Yedlin finds a way to clone himself, becomes the entire starting eleven, and wins the EPL single (eleven) handedly.\n\n")
          end
        end
        stack :width => "50%" do
          "32"
        end
      end
      flow :width => w, :height => hs do
        stack :width => "50%" do
          button( "Everton" ) do
            alert(para "  Everton's Dream Scenario:\n",
            "Tim Howard continues to have USA v. Belgium type out of body experiences, but even that is not enough to drag your sorry team out of the relegation zone. Sorry.\n\n")
          end
        end
        stack :width => "50%" do
          "1"
        end
      end
    end
 end
