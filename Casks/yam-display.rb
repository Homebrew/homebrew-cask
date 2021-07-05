cask "yam-display" do
  version "2.2.5"
  sha256 "4ff45973a5f8ebe49de264bb99f521ba7dd561b0c7b0420d122e5d7734ad64d8"

  url "https://www.yamdisplay.com/app/YamDisplay#{version}.zip"
  name "Yam Display"
  desc "Yet another monitor"
  homepage "https://www.yamdisplay.com/"

  livecheck do
    url "https://www.yamdisplay.com/app/appcast.xml"
    strategy :sparkle
  end

  app "Yam Display.app"

  zap trash: [
    "~/Library/Caches/com.yamstu.yamdisplaymac",
    "~/Library/Preferences/com.yamstu.yamdisplaymac.plist",
  ]
end
