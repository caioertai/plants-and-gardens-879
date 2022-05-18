garden1 = Garden.create!(
  name: "My Little Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg"
)

garden2 = Garden.create!(
  name: "My Other Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg"
)

Plant.create!(
  name: "Cactus",
  garden: garden1,
  image_url: "https://1.bp.blogspot.com/-FXGZdHQgnxE/X23iUuK7aFI/AAAAAAAAVPo/ErHDAd32FEsJ9MzyUnRBWftC2OzcxEjIQCLcBGAsYHQ/s1600/1e685cc4601b3674d004195559968735.jpg"
)

Plant.create!(
  name: "Monsterra",
  garden: garden1,
  image_url: "https://rossevansgardencentre.com.au/wp-content/uploads/2020/02/monstera.jpg"
)
