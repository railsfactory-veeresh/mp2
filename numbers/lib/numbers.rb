class Numbers

  def self.convert(number)
    number1=number%10
    if number1 == 1
    return "#{number}st"
    end
  if number1 ==2
    return "#{number}nd"
  end
  if number1 == 3
  return "#{number}rd"
  end
  if number1>=4 || number1==0
   return "#{number}th"
  end
end

end 
