cask "wickrme" do
  version "5.70.4"
  sha256 "4a86b4e563e83fc9ba47f4dd5f00b575443fb682b75244ce97151ad44ca4fa6e"

  url "https://s3.amazonaws.com/static.wickr.com/downloads/mac/me/WickrMe-#{version}.dmg",
      verified: "s3.amazonaws.com/static.wickr.com/"
  appcast "https://me-download.wickr.com/api/multiVerify/me/undefined/"
  name "Wickr Me"
  homepage "https://wickr.com/products/personal/"

  app "WickrMe.app"
end
