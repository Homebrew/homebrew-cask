cask "wifispoof" do
  version "3.5"
  sha256 "c38080c4afd700866c3ef1c81a4fe18b37bf40e56f16c31a2b897dfe53c646ad"

  # sweetpproductions.com/products/ was verified as official when first introduced to the cask
  url "https://sweetpproductions.com/products/wifispoof#{version.major}/WiFiSpoof#{version.major}.dmg"
  appcast "https://sweetpproductions.com/products/wifispoof#{version.major}/appcast.xml"
  name "WiFiSpoof"
  homepage "https://wifispoof.com/"

  auto_updates true

  app "WiFiSpoof.app"
end
