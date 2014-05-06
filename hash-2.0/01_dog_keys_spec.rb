require 'rspec'
require 'rspec/autorun'

DOG = {
  :cattle_dog => {
    :names => ["Harleigh", "brown"]
  }
}

describe 'Dog Hash' do
  it 'returns the values of the first_name and color keys' do
    expect(DOG[:cattle_dog][:names]).to eq(['Harleigh', 'brown'])
  end
end
