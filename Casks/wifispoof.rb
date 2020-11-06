cask "wifispoof" do
  version "3.4.8"
  sha256 "2a8aaef2cd0b0682650aebdf34818b1a4411d88c4fc275b5e1ee5dea894506e2"

  # sweetpproductions.com/products/ was verified as official when first introduced to the cask
  url "https://sweetpproductions.com/products/wifispoof#{version.major}/WiFiSpoof#{version.major}.dmg"
  appcast "https://sweetpproductions.com/products/wifispoof#{version.major}/appcast.xml"
  name "WiFiSpoof"
  homepage "https://wifispoof.com/"

  auto_updates true

  app "WiFiSpoof.app"
end
