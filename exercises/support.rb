InvalidPost = Class.new(StandardError)

def validate_title_length(title, length)
  raise InvalidPost.new("Too long!") if title.length > length # Delete the breakpoint and finish the method.
end # Next to leave the method.

def greet(name)
  puts "Hello #{name}!" # Step twice to leave the method.
end

class Calculator
  def self.negate(n)
    -n # Finish the method.
  end # Step to leave the method.

  def negate(n)
    Calculator.negate(n)
  end # Step to leave the method.
end
