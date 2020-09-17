cask "wickrme" do
  version "5.62.8"
  sha256 "e7c725b5ce305f9db7d1ba6bca0fda4866b2993a90fcca41f1a51f4e1d701638"

  # s3.amazonaws.com/static.wickr.com/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/static.wickr.com/downloads/mac/me/WickrMe-#{version}.dmg"
  appcast "https://me-download.wickr.com/api/multiVerify/me/undefined/"
  name "Wickr Me"
  homepage "https://wickr.com/products/personal/"

  app "WickrMe.app"
end
