require "debug"

def authenticate(user); end

def process_data(data); end

def calculate_sum(a, b); end

# Welcome to the `next` kata! You'll need to know the following commands:
# `continue`
binding.break # Type `next` or `n` to resume until the next line.

authenticate("admin") # Type `next` or `n` to step over the method call.
process_data([1, 2, 3]) # And again.

calculate_sum(10, 20) # Type `next 3` or `n 3` to step over 3 lines.
authenticate("guest")
process_data([])

exit # Nice one! Continue to finish the kata.
