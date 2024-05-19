require "debug"

def authenticate(user)
  if user == "admin" # Step into the condition.
    puts "User authenticated" # Step out again.
  else
    puts "Access denied"
  end
end # Step out of the `authenticate` method.

def calculate_sum(a, b)
  if a > 0 # Type `step 3` or `s 3` to step into the inner block.
    if b > 0
      if a != b
        a + b # Step twice again to leave the block _and_ method.
      end
    end
  else
    puts "Invalid input"
  end
end

def process_list(items)
  items.each do |item| # Step twice into the condition.
    if item.is_a?(Integer) # Step into the condition.
      puts "Processing item: #{item}" # Step out of the condition.
    else
      puts "Invalid item" # Step out of the condition.
    end
  end # Step to the next item or out of the loop.
end # Step out of the block.

# Welcome to the `step` kata! You'll need to know the following commands:
# - step
# - next
# - continue
binding.break # Next to start the kata.

authenticate("admin") # Type `step` or `s` to step into the `authenticate` method.

calculate_sum(10, 20) # Step into the `calculate_sum` method.

process_list([1, 'a', 3]) # Step into the `process_list` method.

exit # Nice one! Continue to finish the kata.
