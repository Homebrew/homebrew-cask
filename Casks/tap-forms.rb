cask "tap-forms" do
  version "5.3.19,pb7lTffTeGjI79IrJgY6"
  sha256 "b114710f7cc23f6ea15076c990d60863e194fd2512c53b9251174fc90c0110cb"

  url "https://paddle.s3.amazonaws.com/fulfillment_downloads/9234/503174/#{version.after_comma}_Tap%20Forms%20Install%20#{version.before_comma}.dmg",
      verified: "paddle.s3.amazonaws.com/"
  name "Tap Forms 5"
  desc "Helps to organize important files in one place"
  homepage "https://www.tapforms.com/"

  livecheck do
    url "https://vendors.paddle.com/download/product/503174"
    strategy :header_match do |headers|
      version = headers["location"].match(/([A-z0-9]+)[._-]Tap%20Forms%20Install%20(\d+(?:\.\d+)+)\.dmg/)
      "#{version[2]},#{version[1]}"
    end
  end

  app "Tap Forms Mac #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/com.tapzapp.tapforms-mac",
    "~/Library/Containers/com.tapzapp.tapforms-mac",
  ]
end
