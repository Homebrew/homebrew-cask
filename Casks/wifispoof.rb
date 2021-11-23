cask "wifispoof" do
  version "3.7"
  sha256 "03d3ca8cbfb45467045c3a8688bfddc9855f509eb2b2b45d23a4643208e6c668"

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
