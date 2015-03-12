class Fixnum
  def to_fizz
    response = ''
    response += 'Fizz' if self % 3 == 0
    response += 'Buzz' if self % 5 == 0
    
    response.length == 0 ? self : response
  end
end
