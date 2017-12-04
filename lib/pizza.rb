# require 'data_mapper'
# require 'dm-postgres-types'

class Pizza
    # include DataMapper::Resource

    SIZES = [:large, :medium, :small]
    TOPPINGS = [
        :tomato_sauce,
        :onions,
        :cheese,
        :ham,
        :pineapple,
        :pepperoni,
        :mushrooms,
        :sweetcorn,
        :olives
    ]

    # property :id, Serial
    # property :size, String
    # # property :toppings, PGArray

    def self.disallowed_toppings(toppings)
        toppings.reject { |topping| allowed_topping?(topping) }
    end

    private

        def self.allowed_topping?(topping)
            TOPPINGS.include? topping.gsub(" ", "_").to_sym
        end
end