cask "wifispoof" do
  version "3.5.4"
  sha256 "4da4e29977fd5441c6bef2f2aba77a03c063d18ec4073adb0937830abc86ef41"

  url "https://sweetpproductions.com/products/wifispoof#{version.major}/WiFiSpoof#{version.major}.dmg",
      verified: "sweetpproductions.com/products/"
  name "WiFiSpoof"
  homepage "https://wifispoof.com/"

  livecheck do
    url "https://sweetpproductions.com/products/wifispoof#{version.major}/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "WiFiSpoof.app"
end
