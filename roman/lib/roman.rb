class Roman

  def convert(e)

a = (e/1000)*1000
b = ((e/100)%10)*100
c = ((e/10)%10)*10
d = ((e/1)%10)*1

if (a ==1000)
 "M"
elsif (a ==2000)
 "MM"
elsif (a ==3000)
 "MMM"
end
if (b == 100)
  "C"
elsif b == 200
 "CC"
elsif (b == 300)
 "CCC"
elsif (b == 400)
 "CD"
elsif (b ==500)
  "D"
elsif (b == 600)
  "DC"
elsif (b == 700)
 "DCC"
elsif (b ==800)
 "DCCC"
elsif (b == 900)
  "CM"
end

if (c == 10)
 "X"
elsif (c == 20)
 "XX"
elsif (c == 30)
 "XXX"
elsif (c == 40)
 "XL"
elsif (c ==50)
"L"
elsif (c == 60)
 "LX"
elsif (c == 70)
 "LXX"
elsif (c ==80)
 "LXXX"
elsif (c == 90)
 "XC"
end
if (d == 1)
 "I"
elsif (d == 2)
 "II"
elsif (d == 3)
 "III"
elsif (d == 4)
 "IV"
elsif d ==5
 "V"
elsif (d == 6)
  "VI"
elsif d == 7
  "VII"
elsif d ==8
 "VIII"
elsif (d == 9)
 "IX"
end










    
    end
  end

  
