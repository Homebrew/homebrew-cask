cask "willow-voice" do
  version "2.6.4"
  sha256 "5abf3578dbda27d837168e0ab4a72f03736aca8387ac3be7e0ed1ceae1130b82"

  url "https://github.com/LiuLawrence45/stt-sparkle-update/releases/download/v#{version}/Willow.Installer.dmg"
  name "Willow Voice"
  desc "AI-powered voice dictation and writing assistant"
  homepage "https://willowvoice.com/"

  livecheck do
    url "https://liulawrence45.github.io/stt-sparkle-update/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Willow Voice.app"

  uninstall quit: "com.seewillow.WillowMac"

  zap trash: [
    "~/Library/Application Support/com.seewillow.WillowMac",
    "~/Library/Application Support/CrashReporter/Willow Voice_*.plist",
    "~/Library/Caches/com.seewillow.WillowMac",
    "~/Library/Caches/SentryCrash/Willow Voice",
    "~/Library/HTTPStorages/com.seewillow.WillowMac",
    "~/Library/HTTPStorages/com.seewillow.WillowMac.binarycookies",
    "~/Library/Preferences/com.seewillow.WillowMac.plist",
  ]
end
