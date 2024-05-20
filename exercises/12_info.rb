require "debug"

class Calculator
  attr_accessor :result

  def initialize
    @result = 0
  end

  def add(a, b)
    @result = a + b # View the local variables and instance variables, then finish the method.
  end # Step to leave the method.

  def subtract(a, b)
    @result = a - b
  end
end

module MathConstants
  PI = 3.14159
  E = 2.71828
end

class MathOperations
  include MathConstants

  def initialize
    @calculator = Calculator.new
  end

  def perform_operations
    a, b = 5, 3

    # Welcome to the `info` kata! You'll need to know the following commands:
    # - next
    # - continue
    # - step
    # - finish
    # - break
    binding.break # Type `info` or `i` to show information about the current context.
                  # Continue.

    binding.break # Type `info l` or `info locals` to show local variables.
                  # Type `info i` or `info ivars` to show instance variables of the current context.
                  # Type `info i @calculator` to show instance variables of the @calculator object.
                  # Continue.

    binding.break # Type `info c` or `info consts` to show accessible constants.
                  # Type `info c MathConstants` to show constants defined in the MathConstants module.
                  # Type `info g` or `info globals` to show global variables.
                  # Next.

    @calculator.add(a, b) # Step into the `add` method.
    @calculator.subtract(a, b) # Set a breakpoint for the `calculate_area` method and continue.

    calculate_area(2)
  end # Step to leave the method.

  def calculate_area(radius)
    area = PI * radius ** 2 # Type `info breakpoints` or `info b` to show all breakpoints and watchpoints.
                            # View the local variables and finish the method.
  end # Step to leave the method.
end

operations = MathOperations.new
operations.perform_operations

exit # Nice one! Continue to finish the kata.
