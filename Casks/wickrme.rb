cask "wickrme" do
  version "5.74.8"
  sha256 "d0a6eaeeaa39078f6fa437b1dcbb810a84f3c68bd5b9f6fcc105ac7c64e223e2"

  url "https://s3.amazonaws.com/static.wickr.com/downloads/mac/me/WickrMe-#{version}.dmg",
      verified: "s3.amazonaws.com/static.wickr.com/"
  appcast "https://me-download.wickr.com/api/multiVerify/me/undefined/"
  name "Wickr Me"
  desc "Desktop client for Wickr Me"
  homepage "https://wickr.com/products/personal/"

  app "WickrMe.app"
end
