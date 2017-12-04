require './lib/pizza'
require 'active_support/core_ext/array/conversions'

intent "ContinuePizzaOrder" do 
    size = request.slot_value("size") #large, medium, small
    response_text = [
                        "OK, a #{size} pizza. What would you like on that pizza?",
                        "You can choose up to five items, or ask for a list of ",
                        "toppings. Or, choose another size: #{Pizza::SIZES.to_sentence}"
                    ].join
    ask(response_text, session_attributes: { size: size})
end