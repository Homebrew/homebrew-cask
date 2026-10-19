cask "willow-voice" do
  version "2.6.7"
  sha256 "ac5f9a025e1704c8f5e0eaff8115f59a4140f895c0d69b44d2f27765d5f76ddf"

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
