puts " Welcome to the Triwizard Tournament at Hogwarts!"
puts " What's your name?"
name = gets.chomp.capitalize
puts " Would you like to put your name in the cup, #{name}? (yes or no)"
enterCup = gets.chomp.downcase
case enterCup
when "yes"
  puts " Dumbledoor announces that #{name} has been chosen!"
  puts " It's time for the first challenge... get the egg from the dragon!"
  puts " You can use wand, broomstick or you can run (like a coward)"
  dragon = gets.chomp.downcase
  until dragon == "broomstick"
    case dragon
    when "wand"
      puts " The dragon knocks you over with his tail and you drop your wand."
      puts " While you're looking for your wand, the dragon eats you! You lose the game."
      puts " Want to try again?"
      wandRetry = gets.chomp.downcase
      if wandRetry == "yes"
        puts " It's time for the first challenge... get the egg from the dragon!"
        puts " You can use wand, broomstick or you can run (like a coward)"
        dragon = gets.chomp.downcase
      else
        puts " Oh well, good try."
        exit
      end
    when "run"
      puts " You survived the dragon, but you have been disqualified for not completing"
      puts " the challenge. Dumbledoor and all of Hogwarts is very disappointed in you."
      puts " Want to try again?"
      runRetry = gets.chomp.downcase
      if runRetry == "yes"
        puts " It's time for the first challenge... get the egg from the dragon!"
        puts " You can use wand, broomstick or you can run (like a coward)"
        dragon = gets.chomp.downcase
      else
        puts " Oh well, good try."
        exit
      end
    else
      puts " The dragon breathes fire on you... Dumbledoor announces that #{name}"
      puts " has been disqualified for dying. Should've thought about your options."
      puts " Want to try again?"
      elseRetry = gets.chomp.downcase
      if elseRetry == "yes"
        puts " It's time for the first challenge... get the egg from the dragon!"
        puts " You can use wand, broomstick or you can run (like a coward)"
        dragon = gets.chomp.downcase
      else
        puts " Oh well, good try."
        exit
      end
    end
  end
  puts " You fly down and manage to dodge the dragon, grab the egg, and escape!"
  puts " The crowd goes wild! You managed to complete the challenge... and live!"
  puts " Now it's time for the second challenge..."
  puts " Save your friends from the bottom of the lake."
  puts " How do you plan to do it? Use gillyweed, hold your breath, or turn into a shark?"
  lake = gets.chomp.downcase
  until lake == ("gillyweed" || "use gillyweed")
    case lake
    when "hold your breath", "hold my breath"
      puts " You're magic... and you held your breath? Good job, you died."
      puts " Come on, you didn't really expect that to work, did you?"
      puts " Want to try again?"
      lastRetry = gets.chomp.downcase
      if lastRetry == "yes"
        puts " Now it's time for the second challenge..."
        puts " Save your friends from the bottom of the lake."
        puts " How do you plan to do it? Use gillyweed, hold your breath, or turn into a shark?"
        lake = gets.chomp.downcase
      else
        puts " Oh well, good try."
        exit
      end
    when "shark", "turn into a shark"
      puts " The mermaids thought you were an actual shark and... um... killed you."
      puts " Sorry about that..."
      puts " Want to try again?"
      lastRetry = gets.chomp.downcase
      if lastRetry == "yes"
        puts " Now it's time for the second challenge..."
        puts " Save your friends from the bottom of the lake."
        puts " How do you plan to do it? Use gillyweed, hold your breath, or turn into a shark?"
        lake = gets.chomp.downcase
      else
        puts " Oh well, good try."
        exit
      end
    else
      puts " Contrary to popular belief, we can't breathe underwater... You drowned dummy"
      puts " Want to try again?"
      lastRetry = gets.chomp.downcase
      if lastRetry == "yes"
        puts " Now it's time for the second challenge..."
        puts " Save your friends from the bottom of the lake."
        puts " How do you plan to do it? Use gillyweed, hold your breath, or turn into a shark?"
        lake = gets.chomp.downcase
      else
        puts " Oh well, good try."
        exit
      end
    end
  end
  puts " You were able to stay down there long enough to grab BOTH of your friends!"
  puts " You made it through the second challenge... Onto the third!"
  puts " Now you have to get through the maze... But beware... Some weird things"
  puts " are in that maze... Hope you make it out alive..."
  puts " Ready? (yes or no)"
  mazeStart = gets.chomp.downcase
  case mazeStart
  when "yes"
    puts " You walk into the maze. The entrance seals behind you... It's dark..."
    puts " Right away it's... Oh no! A dementor!"
    puts " I hope you know your spells... You need to make a Patronus and get rid of him!"
    dementorSpell = gets.chomp.downcase
    until dementorSpell == "expecto patronum"
      case dementorSpell
      when "hint"
        puts " Try expecto patronum, that may or may not help..."
        puts " Try again... What spell are you going to use?"
        dementorSpell = gets.chomp.downcase
      else
        puts " Come on, you made it this far! You can do it"
        puts " Try again... What spell are you going to use?"
        puts ' (You can type "hint" if you need a spell refresher)'
        dementorSpell = gets.chomp.downcase
      end
    end
    puts " Great! you got rid of him! Hope nothing else pops up."
    puts " You're walking... You're walking..."
    puts " Look out! Another one of the players is bewitched! What are you going to do?"
    puts " You can cast a spell, run the other way, or kill them (a little dark, I know)."
    bewitchedPlayer = gets.chomp.downcase
      case bewitchedPlayer
      when "cast a spell"
        puts " You paralized them and were able to get past them!"
        puts " Look! It's the cup! All you have to do is grab it and you win!"
        puts " Oh no, you grabbed it but it took you to some weird cemetery..."
        puts " Oh. My. God. It's Voldemort! He's back! Look out!"
        puts " There's no way to run, you have to fight him!"
        puts ' Type "attack" to attack Voldemort'
        attack = gets.chomp.downcase
        castSpell = 1 + Random.rand(10)
        totalDamage = 0
        while totalDamage < 10 do
          case attack
          when "attack"
            if castSpell > 1
              puts " You did #{castSpell} damage to Voldemort!"
              totalDamage = totalDamage + castSpell
              puts " Total damage: #{totalDamage}"
              if totalDamage >= 10
                puts " You beat Voldemort!"
                break
              else
                puts " Keep going! He's getting weaker!"
                puts ' Type "attack" again!'
                castSpell = 1 + Random.rand(10)
              end
              attack = gets.chomp.downcase
            else
              puts " Voldemort killed you. Wah wah wah."
              puts " Want to try again?"
              lastRetry = gets.chomp.downcase
              if lastRetry == "yes"
                puts " Attack Voldemort so he doesn't kill you!"
                castSpell = 1 + Random.rand(10)
                attack = gets.chomp.downcase
              else
                puts " Oh well, good try."
                exit
              end
            end
          else
            puts " If you're not going to attack then Voldemort kills you and wins"
            puts " Want to try again?"
            lastRetry = gets.chomp.downcase
            if lastRetry == "yes"
              puts " Attack Voldemort so he doesn't kill you!"
              attack = gets.chomp.downcase
            else
              puts " Oh well, good try."
              exit
            end
          end
        end
        puts " You grabbed the cup and were taken back to Hogwarts where you were"
        puts " awarded First Place!!! Great job winning the tournament and defeating"
        puts " Voldemort! Hope you try again next year #{name}!"
        puts ""
        exit
      when "run", "run the other way"
        puts " Great, but now you're lost. You get trapped at a dead end and"
        puts " and the tree monsters get you and you die. Shouldn't have been a wimp."
        puts " Want to try again?"
        lastRetry = gets.chomp.downcase
        if lastRetry == "yes"
          puts " You're walking... You're walking..."
          puts " Look out! Another one of the players is bewitched! What are you going to do?"
          puts " You can cast a spell, run the other way, or kill them (a little dark, I know)."
          bewitchedPlayer = gets.chomp.downcase
        else
          puts " Oh well, good try."
          exit
        end
      when "kill them"
        puts " Wow you either have a very dark mind or you really want to win."
        puts " Either way, it worked, you got past them."
        puts " Look! It's the cup! All you have to do is grab it and you win!"
        puts " Oh no, you grabbed it but it took you to some weird cemetery..."
        puts " Oh. My. God. It's Voldemort! He's back! Look out!"
        puts " There's no way to run, you have to fight him!"
        puts ' Type "attack" to attack Voldemort'
        attack = gets.chomp.downcase
        castSpell = 1 + Random.rand(10)
        totalDamage = 0
        while totalDamage < 10 do
          case attack
          when "attack"
            if castSpell > 1
              puts " You did #{castSpell} damage to Voldemort!"
              totalDamage = totalDamage + castSpell
              puts " Total damage: #{totalDamage}"
              if totalDamage >= 10
                puts " You beat Voldemort!"
                break
              else
                puts " Keep going! He's getting weaker!"
                puts ' Type "attack" again!'
                castSpell = 1 + Random.rand(10)
              end
              attack = gets.chomp.downcase
            else
              puts " Voldemort killed you. Wah wah wah."
              puts " Want to try again?"
              lastRetry = gets.chomp.downcase
              if lastRetry == "yes"
                puts " Attack Voldemort so he doesn't kill you!"
                castSpell = 1 + Random.rand(10)
                attack = gets.chomp.downcase
              else
                puts " Oh well, good try."
                exit
              end
            end
          else
            puts " If you're not going to attack then Voldemort kills you and wins"
            puts " Want to try again?"
            lastRetry = gets.chomp.downcase
            if lastRetry == "yes"
              puts " Attack Voldemort so he doesn't kill you!"
              attack = gets.chomp.downcase
            else
              puts " Oh well, good try."
              exit
            end
          end
        end
        puts " You grabbed the cup and were taken back to Hogwarts. Unfortunately,"
        puts " since you murdered another student you are disqualified."
        puts " Thanks for defeating Voldemort though... Better luck next time #{name}!"
        puts ""
        exit
      else
        puts " Want to try again?"
        lastRetry = gets.chomp.downcase
        if lastRetry == "yes"
          puts " You're walking... You're walking..."
          puts " Look out! Another one of the players is bewitched! What are you going to do?"
          puts " You can cast a spell, run the other way, or kill them (a little dark, I know)."
          bewitchedPlayer = gets.chomp.downcase
        else
          puts " Oh well, good try."
          exit
        end
      end
  when "no"
    puts " Then I guess you forfeit. Oh well, you could have done well, #{name}."
  else
    puts " The other challenges must have taken too much of a toll on you"
    puts " if you can't even answer a simple yes or no question."
  end
when "no"
  puts " Okay, maybe next year..."
else
  puts " You must be a muggle if you can't even answer yes or no..."
end
