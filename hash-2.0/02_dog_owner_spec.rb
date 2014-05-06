require 'rspec'
require 'rspec/autorun'

DOG = {
  'harleigh' => {
    :preferences => [
      {:favorite_toy => 'frog'},
      {:favorite_food => 'steak'}
    ]
  },
  'trixie' => {
    :preferences => [
      {:favorite_toy => 'whatever'},
      {:favorite_food => 'steak'}
    ]
  }
}

describe 'Dog Hash' do
  it "returns Harleigh's favorite toy" do
    expect(DOG["harleigh"][:preferences].first[:favorite_toy]).to eq("frog")
  end

  it "returns Trixie's favorite food" do
    expect(DOG["trixie"][:preferences].last[:favorite_food]).to eq("steak")
  end
end
