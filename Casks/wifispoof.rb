cask "wifispoof" do
  version "3.5.1"
  sha256 "c41db41250acfddef838bcda0e808e6f855827d23955fdac8e7a979bb7694512"

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
