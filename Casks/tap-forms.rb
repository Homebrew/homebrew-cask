cask "tap-forms" do
  version "5.3.32,mD6rt6vOQd6czZDabkYK"
  sha256 "5f1fdf6d4067257a8f7b081102b54e0ec98bdbedcf12fd3c3b1709f612d8243b"

  url "https://paddle.s3.amazonaws.com/fulfillment_downloads/9234/503174/#{version.csv.second}_Tap%20Forms%20Install%20#{version.csv.first}.dmg",
      verified: "paddle.s3.amazonaws.com/"
  name "Tap Forms 5"
  desc "Helps to organize important files in one place"
  homepage "https://www.tapforms.com/"

  livecheck do
    url "https://vendors.paddle.com/download/product/503174"
    strategy :header_match do |headers|
      version = headers["location"].match(/([A-z0-9]+)[._-]Tap%20Forms%20Install%20(\d+(?:\.\d+)+)\.dmg/)
      next if version.blank?

      "#{version[2]},#{version[1]}"
    end
  end

  app "Tap Forms Mac #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/com.tapzapp.tapforms-mac",
    "~/Library/Containers/com.tapzapp.tapforms-mac",
  ]
end
