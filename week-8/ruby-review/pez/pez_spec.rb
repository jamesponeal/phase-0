require_relative "pez"

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle

describe "PezDispenser" do

  it 'Expects a single argument for pez dispenser' do
    expect(PezDispenser.instance_method(:initialize).arity).to eq 1
  end

  it 'returns true when pez count is 12 after pez dispenser is loaded' do
    pez1 = PezDispenser.new(flavors)
    expect pez1.pez_count == 12
  end

  it 'adds one to pez count when add pez is called' do
    pez2 = PezDispenser.new(flavors)
    pez2.add_pez(flavors)
    expect pez2.pez_count == 13
  end

  it 'removes one from pez count when get pez is called' do
    pez3 = PezDispenser.new(flavors)
    pez3.get_pez
    expect pez3.pez_count == 11
  end

  it 'returns true if see_all_pez returns an array' do
    pez4 = PezDispenser.new(flavors)
    expect (pez4.see_all_pez.is_a?(Array)) == true
  end

end



