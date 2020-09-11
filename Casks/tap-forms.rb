cask "tap-forms" do
  version "5.3.13"
  sha256 "0cea6bdad0da07aa75875f80df53afe02aa51ca217e0e8e14322bfa7574e430e"

  # vendors.paddle.com/download/product/503174 was verified as official when first introduced to the cask. Developer uses paddle.com to process licences and payments for the software
  url "https://vendors.paddle.com/download/product/503174"
  appcast "https://www.tapforms.com/app/tf-mac-#{version.major}.1-sparkle-appcast.xml"
  name "Tap Forms 5"
  desc "Helps to organize important files in one place"
  homepage "https://www.tapforms.com/"

  app "Tap Forms Mac #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/com.tapzapp.tapforms-mac",
    "~/Library/Containers/com.tapzapp.tapforms-mac",
  ]
end
