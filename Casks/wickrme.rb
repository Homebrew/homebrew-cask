cask "wickrme" do
  version "5.66.14"
  sha256 "d98b3ced79dcba84e436a39b7bc830db723300330cf61675dfe2e02ea1907145"

  # s3.amazonaws.com/static.wickr.com/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/static.wickr.com/downloads/mac/me/WickrMe-#{version}.dmg"
  appcast "https://me-download.wickr.com/api/multiVerify/me/undefined/"
  name "Wickr Me"
  homepage "https://wickr.com/products/personal/"

  app "WickrMe.app"
end
