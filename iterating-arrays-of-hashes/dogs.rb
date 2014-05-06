class Dogs
  POOR = (0..5).to_a.sample
  AVERAGE = (6..10).to_a.sample
  EXCELLENT = (11..15).to_a.sample

  def initialize
    joe = {
      :name => {:first => "Joe", :last => "Smith"},
      :owner_quality => EXCELLENT
    }
    sarah = {
      :name => {:first => "Sarah", :last => "Smith"},
      :owner_quality => AVERAGE
    }
    andrew = {
      :name => {:first => "Andrew", :last => "Beter"},
      :owner_quality => AVERAGE
    }

    @dogs = [{:name => "Fido", :size => :large, :owner => joe},
             {:name => "Yapper", :size => :small, :owner => joe},
             {:name => "Bruiser", :size => :large, :owner => joe},
             {:name => "Tank", :size => :huge, :owner => sarah},
             {:name => "Beast", :size => :large, :owner => sarah},
             {:name => "Harleigh", :size => :medium, :owner => andrew},
             {:name => "Trixie", :size => :small, :owner => andrew},]
  end

  def small_dogs
    filter(:small)
  end

  def huge_dog
    @dogs.find { |dog| dog[:size] == :huge}
  end

  def large_dog_names
    dog_names(filter(:large))
  end

  def joes_large_dogs
    dog_names(filter(:large).select { |dog| dog[:owner][:name][:first] == "Joe" })
  end

  def sizes
    @dogs.map { |dog| dog[:size] }.uniq
  end

  def owners
    owner_names(@dogs).uniq
  end

  def average_owners
    owner_names(@dogs.select { |dog| dog[:owner][:owner_quality] == AVERAGE}).uniq
  end

  private

  def filter(size)
    @dogs.select { |dog| dog[:size] == size }
  end

  def dog_names(selected_dogs)
    selected_dogs.map { |dog| dog[:name]}
  end

  def owner_names(dogs)
    dogs.map do |dog|
      "#{dog[:owner][:name][:first]} #{dog[:owner][:name][:last]}"
    end
  end
end
