require "debug"

@inventory_count = 0
@orders = 0
@shipment = 0
@restock = 0

# Welcome to the `watch` kata!
binding.break # Type `watch @inventory_count` to break whenever `@inventory_count` changes, and continue.

5.times do
  @inventory_count += 1
end # Continue.

binding.break # Type `watch @orders if: @orders.odd?` to break whenever `@orders` is odd, and continue.

10.times do
  @orders += 1
end # Continue.

binding.break # Type `watch @shipment pre: puts @shipment` to print `@shipment` before breaking, and continue.

5.times do
  @shipment += 1
end # Continue.

binding.break # Type `watch @restock do: puts @restock` to print `@restock` without breaking, and continue.

5.times do
  @restock += 1
end # Continue.

binding.break # Nice one! Continue to finish the kata.
