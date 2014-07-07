class Spell_digit


def self.convert(input)
     String s = ""
    while input >= 1000 
        s += "THUOSAND"
        input -= 1000
    end        
    while input >= 900 
        s += "NINE HUNDRED"
        input -= 900
     end
    while input >= 800 
        s += "EIGHT HUNDRED"
        input -= 800
     end
   while input >= 700 
        s += "SEVEN HUNDRED"
        input -= 700
     end
    while input >= 600 
        s += "SIX HUNDRED"
        input -= 600
     end
    while input >= 500
        s += "FIVE HUNDRED"
        input -= 500
    end
    while input >= 400 
        s += "FOUR HUNDRED"
        input -= 400
     end
    while input >= 300 
        s += "THREE HUNDRED"
        input -= 300
    end
    while input >= 100 
        s += "HUNDRED"
        input -= 100
    end
    while input >= 90
        s += "NINTY"
        input -= 90
     end
  while input >= 80
        s += "EIGHTTY"
        input -= 90
    end
  while input >= 70
        s += "SEVENTY"
        input -= 90
  end
   while input >= 60 
        s += "SIXTY"
        input -= 60
    end
    while input >= 50 
        s += "FIFTY"
        input -= 50
    end
    while input >= 40
        s += "FOURTY"
        input -= 40
    end
 while input >= 30 
        s += "THIRTYTY"
        input -= 30
    end
 while input >= 20 
        s += "FIFTY"
        input -= 20
    end
    while input >= 10
        s += "TEN"
        input -= 10
    end
    while input >= 9
        s += "NINE"
        input -= 9
    end
   while input >= 9
        s += "NINE"
        input -= 9
    end
   while input >= 8
        s += "EIGHT"
        input -= 8
    end
   while input >= 7
        s += "SEVEN"
        input -= 7
    end
    while input >= 6 
        s += "SIX"
        input -= 6
    end
     while input >= 5
        s += "FIVE"
        input -= 5
    end
    while input >= 4 
        s += "FOUR"
        input -= 4
    end
   while input >= 3
        s += "THREE"
        input -= 
    end
    while input >= 2 
        s += "TWO"
        input -= 2
     end   
    while input >= 1
        s += "ONE"
        input -= 1
    end
    return s
end
end
