cask "tap-forms" do
  version "5.3.17"
  sha256 "35d29be1a8066aca40b043ef83913f2779c4221ffff5fddbb96ca2b5b3c154bd"

  # vendors.paddle.com/download/product/503174 was verified as official when first introduced to the cask. Developer uses paddle.com to process licences and payments for the software
  url "https://vendors.paddle.com/download/product/503174"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://vendors.paddle.com/download/product/503174"
  name "Tap Forms 5"
  desc "Helps to organize important files in one place"
  homepage "https://www.tapforms.com/"

  app "Tap Forms Mac #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/com.tapzapp.tapforms-mac",
    "~/Library/Containers/com.tapzapp.tapforms-mac",
  ]
end
