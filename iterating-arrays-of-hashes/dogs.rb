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

  # only edit below this line

  def small_dogs
    small_dogs = []
    @dogs.each do |dog|
      if dog[:size].to_s == "small"
        small_dogs << dog
      end
    end
    small_dogs
  end

  def huge_dog
    @dogs.each do |dog|
      if dog[:size].to_s == "huge"
        return dog
      end
    end
  end

  def large_dog_names
    large_dog_names = []
    @dogs.each do |dog|
      if dog[:size].to_s == "large"
        large_dog_names << dog[:name]
      end
    end
    large_dog_names
  end

  def joes_large_dogs
    joes_large_dogs = []
    @dogs.each do |dog|
      if dog[:size].to_s == "large" && dog[:owner][:name][:first] == "Joe"
        joes_large_dogs << dog[:name]
      end
    end
    joes_large_dogs
  end

  def sizes
    sizes = []
    @dogs.each do |dog|
       sizes << dog[:size]
    end
    sizes.uniq
  end

  def owners
    owners = []
    @dogs.each do |dog|
      owners << "#{dog[:owner][:name][:first]} #{dog[:owner][:name][:last]}"
    end
    owners.uniq
  end

  def average_owners
    average_owners = []
    @dogs.each do |dog|
      if dog[:owner][:owner_quality] == AVERAGE
        average_owners << "#{dog[:owner][:name][:first]} #{dog[:owner][:name][:last]}"
      end
    end
    average_owners.uniq
  end
end
