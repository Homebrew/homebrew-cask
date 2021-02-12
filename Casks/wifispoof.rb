cask "wifispoof" do
  version "3.5.5"
  sha256 "9a30ce85b4afafe49b23380aeab94a89aefca10d491e9ed5eea292571ad7062b"

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
