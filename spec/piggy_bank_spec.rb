# As a user,
# So that I can save money
# I can put coins in my piggy bank
# As a user,
# So that I know whether there are coins in my piggy bank
# I can shake it, and it will “cling” if there is money in it
# As a user,
# So I can enjoy my hard earned savings
# I can break my piggy bank and get back the number or coins that I had put in


require 'piggy_bank'
require 'rspec'

RSpec.describe 'Piggy bank' do

  it 'should give the correct amount back when broken' do
    piggy = PiggyBank.new
    piggy.insert 12
    piggy.insert 6
    expect(piggy.break).to eq 18
  end

  it 'should make a noise when shaken and contains coins' do
    piggy = PiggyBank.new
    piggy.insert 5
    expect(piggy.shake).to eq 'Cling!'
  end

  it 'should NOT make a noise when shaken and does not contains coins' do
    piggy = PiggyBank.new
    expect(piggy.shake).to eq 'Silence...'
  end
end