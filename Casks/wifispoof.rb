cask "wifispoof" do
  version "3.8.0.2"
  sha256 "ff039d73f2994e3a20b1c667fbeab886bbcab12116fffb645af2e95a811a99a6"

  url "https://sweetpproductions.com/products/wifispoof#{version.major}/WiFiSpoof#{version.major}.dmg",
      verified: "sweetpproductions.com/products/"
  name "WiFiSpoof"
  desc "Change your computer's MAC address"
  homepage "https://wifispoof.com/"

  livecheck do
    url "https://sweetpproductions.com/products/wifispoof#{version.major}/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "WiFiSpoof.app"
end
