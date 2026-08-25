cask "willow-voice" do
  version "2.3.19"
  sha256 "79c3a43be894d2c172f8da7b7f92674b05e42801e7dc418a7fab8053895a2ab2"

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
