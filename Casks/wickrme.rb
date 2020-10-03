cask "wickrme" do
  version "5.63.16"
  sha256 "70a4941325eedc271e76bd11960baaeb7845188750f625ee1ade1d2836a95b1b"

  # s3.amazonaws.com/static.wickr.com/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/static.wickr.com/downloads/mac/me/WickrMe-#{version}.dmg"
  appcast "https://me-download.wickr.com/api/multiVerify/me/undefined/"
  name "Wickr Me"
  homepage "https://wickr.com/products/personal/"

  app "WickrMe.app"
end
