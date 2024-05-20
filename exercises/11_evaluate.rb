require "debug"

DATA = {
  "users" => [
    {
      "id" => 1,
      "name" => "Alice",
      "roles" => ["admin", "editor"],
      "email" => "alice@example.com",
      "address" => {
        "street" => "123 Maple St",
        "city" => "Springfield",
        "postal" => "12345"
      },
      "posts" => [
        { "id" => 101, "title" => "First Post", "comments" => ["Great post!", "Thanks for sharing."] },
        { "id" => 102, "title" => "Another Post", "comments" => ["Nice!", "Very informative."] }
      ]
    },
    {
      "id" => 2,
      "name" => "Bob",
      "roles" => ["viewer"],
      "email" => "bob@example.com",
      "address" => {
        "street" => "456 Oak St",
        "city" => "Shelbyville",
        "postal" => "67890"
      },
      "posts" => [
        { "id" => 201, "title" => "Hello World", "comments" => ["Welcome!", "Good start."] }
      ]
    }
  ]
}

def find_user(id)
  DATA["users"].find do |user| # Type `p id` to inspect the `id` variable, then step into the loop.
    user["id"] == id # Inspect the user. Try `pp user` for a pretty-printed output.
                     # Finish <n> to leave the loop and method.
  end
end # Step out of the method.

# Welcome to the `evaluate` kata! You'll need to know the following commands:
# `continue`, `next`, `step`, `finish`
binding.break # Next to start the kata.

user = find_user(2) # Step into the `find_user` method.

puts "User: #{user["name"]}" # Type `eval user["name"].upcase!` to upcase the user's name, then next.
puts "Email: #{user["email"]}" # Obfuscate the the user's email like "***@example.com", then next.

exit # Nice one! Continue to finish the kata.
