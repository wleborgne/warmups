# Implement FizzBuzz as a method on Fixnum
class Fixnum
  def to_fizz
    response = [('Fizz' if self % 3 == 0), ('Buzz' if self % 5 == 0)].join
    response.length == 0 ? self : response
  end
end
