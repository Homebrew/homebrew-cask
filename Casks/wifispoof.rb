cask "wifispoof" do
  version "3.5.6"
  sha256 "a4a09e170b0f20eb4816c94e9512c08c18236f35bfc644f2af1224c9ce0bd0cb"

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
