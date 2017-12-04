# require 'pizza'

# RSpec.describe Pizza do
#     # before do 
#     #     DataMapper.setup(:default, 'postgres://capewearingmama@localhost/pizzabuddytest')
#     #     DataMapper.finalize
#     #     Pizza.auto_migrate!
#     # end

#     describe 'SIZES' do
#         it 'holds the available pizza sizes' do
#             expect(described_class::SIZES).to eq [:large, :medium, :small]
#         end
#     end

#     describe '.disallowed_toppings' do
#         it 'filters a list of toppings, returning the disallowed toppings' do
#         expect(described_class.disallowed_toppings(['mushrooms', 'tomato sauce'])).to be_empty
#         expect(described_class.disallowed_toppings(['gold', 'forgiveness'])).to eq ['gold', 'forgiveness']
#         expect(described_class.disallowed_toppings(['mushrooms', 'forgiveness'])).to eq [ 'forgiveness']
#         end

#     end

#     describe 'saving to the database' do
#         it 'starts out unpersisted' do
#             pizza = Pizza.new(size: 'small', toppings: ['cheese', 'ham'])
#             expect(pizza.id).to be_nil
#         end

#         it 'can be persisted' do 
#             pizza = Pizza.new(size: 'small', toppings: ['cheese', 'ham'])
#             pizza.save

#             expect(pizza.id).not_to be_nil
#         end
#     end
# end