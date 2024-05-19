require "debug"

def calculate_total_price(quantity, price_per_unit)
  subtotal = calculate_subtotal(quantity, price_per_unit) # Type `finish` or `fin` to finish the current method.
  apply_discount(subtotal, 10)
end # Step out of the `calculate_total_price` method.

def calculate_subtotal(quantity, price_per_unit)
  quantity * price_per_unit
end

def apply_discount(subtotal, discount_percentage)
  subtotal - (subtotal * discount_percentage / 100.0)
end

def process_order(order_id)
  validate_order(order_id) do |valid| # Step into the `validate_order` method.
    if valid # Step twice into the `process_payment` method.
      process_payment(order_id, 100)
    else
      puts "Invalid order"
    end
  end
end # Step out of the `process_order` method.

def validate_order(order_id, &block)
  block.call(order_id > 0) # Step into the block.
end

def process_payment(order_id, amount)
  puts "Order ##{order_id} - #{amount}" # Type `fin 4` or `finish 4` to finish:
                                        # 1. the current method
                                        # 2. the block
                                        # 3. the `validate_order` method
                                        # 4. the `process_order` method
end

# Welcome to the `finish` kata! You'll need to know the following commands:
# - next
# - step
# - continue
binding.break # Next to start the kata.

calculate_total_price(5, 20) # Step into the `calculate_total_price` method.

process_order(1234) # Step into the `process_order` method.

exit # Nice one! Continue to finish the kata.
