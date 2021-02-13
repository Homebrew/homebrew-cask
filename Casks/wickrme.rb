cask "wickrme" do
  version "5.72.9"
  sha256 "44195be6ffd22d8b9da54fde5f3983baa90dff4527ad8e87bd3532c32d49f4d1"

  url "https://s3.amazonaws.com/static.wickr.com/downloads/mac/me/WickrMe-#{version}.dmg",
      verified: "s3.amazonaws.com/static.wickr.com/"
  appcast "https://me-download.wickr.com/api/multiVerify/me/undefined/"
  name "Wickr Me"
  desc "Desktop client for Wickr Me"
  homepage "https://wickr.com/products/personal/"

  app "WickrMe.app"
end
