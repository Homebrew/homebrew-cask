cask "yam-display" do
  version "1.8.8"
  sha256 "9d7ea3042119dbbc83d1a243e4fb4c3f2795678d4a5fe51fd67f4987e6ccb859"

  url "https://www.yamdisplay.com/app/YamDisplay#{version}.zip"
  name "Yam Display"
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
