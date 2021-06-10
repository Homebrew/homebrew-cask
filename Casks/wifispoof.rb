cask "wifispoof" do
  version "3.5.8"
  sha256 "1a7971fc8c95bc5874ba800bf5bc63264dd5e5fe317f133985a925ecbbcc4d69"

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
