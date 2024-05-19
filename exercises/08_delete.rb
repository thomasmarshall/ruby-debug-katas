require "debug"

def calculate_interest(principal, rate, time)
  interest = principal * rate * time / 100 # Break at line 6 and continue.
  total_amount = principal + interest
  total_amount -= (total_amount * 0.02) # Break at line 8 and continue.
  total_amount += (total_amount * 0.01)
  total_amount /= time # Finish the `calculate_interest` method.
  total_amount *= rate
end # Step out of the `calculate_interest` method.

# Welcome to the `delete` kata! You'll need to know the following commands:
# - next
# - step
# - break
# - finish
# - continue
binding.break # Next to start the kata.

calculate_interest(1000, 5, 2) # Step into the `calculate_interest` method.
calculate_interest(1500, 4, 3) # List all breakpoints.
                               # Type `del <n>` or `delete <n>` to delete the breakpoint on line 6, then continue.
calculate_interest(2000, 3, 4) # Type `del` or `delete` and then `Y` to delete all breakpoints, then next.

exit # Nice one! Continue to finish the kata.
