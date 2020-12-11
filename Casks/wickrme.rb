cask "wickrme" do
  version "5.68.7"
  sha256 "f84d7dff662a51f373a36970f39aa6bc2d02fd654ffa3d53bc246fd7d2d1a3d1"

  # s3.amazonaws.com/static.wickr.com/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/static.wickr.com/downloads/mac/me/WickrMe-#{version}.dmg"
  appcast "https://me-download.wickr.com/api/multiVerify/me/undefined/"
  name "Wickr Me"
  homepage "https://wickr.com/products/personal/"

  app "WickrMe.app"
end
