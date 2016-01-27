module ApplicationHelper
  def randomized_background_image
    images = [
      asset_path("background1.jpg"),
      asset_path("background2.jpg"),
      asset_path("background3.jpg")
    ]
    puts "-----------------------#{images[0]}"
    images.sample
  end
end
