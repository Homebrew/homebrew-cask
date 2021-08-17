cask "wifispoof" do
  version "3.6"
  sha256 "a044996486ccb4f81d9d7a0bee4dc608790453559016886e05d8cbf70dde6ebd"

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
