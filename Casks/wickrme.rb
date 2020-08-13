cask "wickrme" do
  version "5.60.16"
  sha256 "d3ca09efee147bda2af163cb3c4c35f4496fc8b64ab56607fdf0797ac702049b"

  # s3.amazonaws.com/static.wickr.com/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/static.wickr.com/downloads/mac/me/WickrMe-#{version}.dmg"
  appcast "https://me-download.wickr.com/api/multiVerify/me/undefined/"
  name "Wickr Me"
  homepage "https://wickr.com/products/personal/"

  app "WickrMe.app"
end
