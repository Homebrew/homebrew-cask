cask "willow-voice" do
  version "2.3.1"
  sha256 "eed6e8510c641a56a2c61c97848be893c1a71b7f90d359e2887ca1f2639ea582"

  url "https://github.com/LiuLawrence45/stt-sparkle-update/releases/download/v#{version}/Willow.Installer.dmg",
      verified: "github.com/LiuLawrence45/stt-sparkle-update/"
  name "Willow Voice"
  desc "AI-powered voice dictation and writing assistant"
  homepage "https://willowvoice.com/"

  livecheck do
    url "https://liulawrence45.github.io/stt-sparkle-update/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "Willow Voice.app"

  uninstall quit: "com.seewillow.WillowMac"
end
