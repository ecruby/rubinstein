World.new("My First Text Adventure") do
  

  location "hallway" do
    description "A dark and quiet hallway"
    north       "kitchen"
  end

  location "kitchen" do
    description "An abandoned kitchen"
    north       "hall"
    south       "hallway"
  end

  location "hall" do
    description "A banquet hall...strangely deserted"
    south       "kitchen"
  end

  start "hallway"

end
