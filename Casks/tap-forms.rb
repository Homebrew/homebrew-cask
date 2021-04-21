cask "tap-forms" do
  version "5.3.17"
  sha256 :no_check

  url "https://paddle.s3.amazonaws.com/fulfillment_downloads/9234/503174/e5FEK2CRaefFHU772pok_Tap%20Forms%20Install%20#{version}.dmg",
      verified: "paddle.s3.amazonaws.com/"
  name "Tap Forms 5"
  desc "Helps to organize important files in one place"
  homepage "https://www.tapforms.com/"

  livecheck do
    url "https://vendors.paddle.com/download/product/503174"
    strategy :header_match
  end

  app "Tap Forms Mac #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/com.tapzapp.tapforms-mac",
    "~/Library/Containers/com.tapzapp.tapforms-mac",
  ]
end
