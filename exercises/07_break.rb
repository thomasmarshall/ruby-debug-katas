require "debug"
require_relative "support"

class Order
  def process
    item1 = Inventory.new # Next line.
    item2 = Inventory.new # Type `break item1.check_stock` to break on `item1` invoking `check_stock`, and continue.
    item1.check_stock
    item2.check_stock # Finish the `process` method.
  end # Step out of the `process` method.
end

class Inventory
  def check_stock
    'In Stock' # Finish the `check_stock` method.
  end # Step out of the `check_stock` method.
end

def calculate_tax(amount)
  amount += 10 # Break at line 22 and continue.
  amount /= 2
  amount *= 3 # Break at line 24 and continue.
  amount += 5
  amount /= 4 # Finish the `calculate_tax` method.
  amount *= 2
end # Step out of the `calculate_tax` method.

class Calculator
  def cube(n)
    n * n * n # Step twice to leave the method.
  end

  def square_root(n)
    Math.sqrt(n) # Step twice to leave the method.
  end

  def double(n)
    n * 2 # Step twice to leave the method.
  end
end

# Welcome to the `break` kata! You'll need to know the following commands:
# `continue`, `next`, `step`
binding.break # Next to start the kata.

calculate_tax(100) # Type `break 49` or `b 49` to set a breakpoint on line 49, then continue.
calculate_tax(200)
calculate_tax(300)
calculate_tax(400) # Step into the `calculate_tax` method.

binding.break # Type `break exercises/support.rb:2` to set a breakpoint in the `support.rb` file, and continue.

greet("Alex")

order = Order.new # Type `break` or `b` to list all breakpoints.
                  # Type `break Order#process` or `b Order#process` to set a breakpoint on `Order#process`.
                  # Continue to the next breakpoint.

order.process

calculator = Calculator.new # Next line.

calculator.cube(3) # Type `break calculator.cube if: n > 4` to set a conditional breakpoint, and continue.
calculator.cube(4)
calculator.cube(5)

calculator.square_root(16) # Type `break calculator.square_root pre: puts n` to print the value of `n` before stopping, and continue.

binding.break # Type `break self.greet do: name.reverse!` to reverse the name before continuing, and continue.
greet("xelA")

calculator.negate(-10) # Type `break Calculator.negate path: /support\.rb/` to set a breakpoint in a specific file, and continue.

@orders = 0
binding.break # Type `break if: @orders.odd?` to set a conditional breakpoint, then continue.
              # This is slow, so you may not want to use it when debugging a real application.

5.times do
  @orders += 1 # Continue.
end

exit # Nice one! Continue to finish the kata.
