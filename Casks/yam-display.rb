cask "yam-display" do
  version "1.8.7"
  sha256 "c2ff8f91681d5ad6977a96ebb43a76a08d6da43d2be286750e359d116bfc126f"

  url "https://www.yamdisplay.com/app/YamDisplay#{version}.zip"
  appcast "https://www.yamdisplay.com/app/appcast.xml"
  name "Yam Display"
  homepage "https://www.yamdisplay.com/"

  app "Yam Display.app"

  zap trash: [
    "~/Library/Caches/com.yamstu.yamdisplaymac",
    "~/Library/Preferences/com.yamstu.yamdisplaymac.plist",
  ]
end
