require 'rspec'
require 'rspec/autorun'

DOG = {
  "harleigh" => {
    :information => {
      :sport => ["frisbee", "hiking"]
    }
  },

  "trixie" => {
    :information => {
      :sport =>
        [:swimming, :prancing]
    }
  }
}


describe 'Dog Hash' do
  it "returns Harleigh's favorite sports" do
    expect(DOG["harleigh"][:information][:sport]).to eq(["frisbee", "hiking"])
  end

  it "returns Trixie's favorite sports" do
    expect(DOG["trixie"][:information][:sport]).to eq([:swimming, :prancing])
  end
end
