cask "yam-display" do
  version "2.4.5"
  sha256 "eb74a1ccd76fb0f920a1a2e1096155da2b92f0cfebfcac76a97c8e17725fe63c"

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
