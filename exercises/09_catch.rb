require "debug"
require_relative 'support'

InvalidData = Class.new(StandardError)
ValueTooBig = Class.new(StandardError)
InvalidUser = Class.new(StandardError)
FileNotFound = Class.new(StandardError)

FILES = {
  "data.txt" => "Hello, World!",
  "config.yml" => "---\nenabled: false",
}

def process_data(data)
  raise InvalidData.new("Can't be empty!") if data.empty? # Delete the break point then finish the method.
rescue InvalidData
end # Next to leave the method.

def calculate_value(x, y)
  result = x + y

  if result > 100
    raise ValueTooBig.new("Must be less than 100!") # Delete the break point then finish the method.
  end

  result
rescue ValueTooBig
end # Leave the method.

def validate_user(user)
  return if user == "admin"

  raise InvalidUser.new("Admin only!") # Delete the break point then finish the method.
rescue InvalidUser
end # Leave the method.

def open_file(filename)
  if FILES[filename].nil?
    raise FileNotFound.new("Doesn't exist!") # Delete the break point then finish the method.
  end

  FILES[filename]
rescue FileNotFound
end # Leave the method.

def create_post(title)
  if title[0].downcase == title[0]
    raise InvalidPost.new("Not title case!")
  end

  if title.upcase == title
    raise InvalidPost.new("Not title case!")
  end

  validate_title_length(title, 20)
rescue InvalidPost
end # Leave the method.

# Welcome to the `catch` kata! You'll need to know the following commands:
# - next
# - continue
# - delete
# - finish
binding.break # Next to start the kata.

process_data("Hello, World!") # Type `catch InvalidData` to set a breakpoint on raising `InvalidData`, then continue.
process_data("abcdefghijklmnopqrstuvwxyz")
process_data("")

calculate_value(200, 75) # Type `catch ValueTooBig if: x.is_a?(Float)` to set a conditional breakpoint, then continue.
calculate_value(30.03, 40.04)
calculate_value(55.55, 66.66)

validate_user("admin") # Type `catch InvalidUser pre: puts user` to print the value of `user` before stopping, then continue.
validate_user("admin")
validate_user("guest")

open_file("data.txt") # Type `catch FileNotFound do: puts filename` to stop then print the value of `filename`, then continue.
open_file("config.yml")
open_file("missing.txt")

create_post("MY FIRST POST") # Type `catch InvalidPost path: /support\.rb/` to set a breakpoint in a specific file, then continue.
create_post("another post")
create_post("How to debug Ruby code using the Ruby debug gem")

exit # Nice one! Continue to finish the kata.
