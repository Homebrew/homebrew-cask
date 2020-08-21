cask "yam-display" do
  version "1.8.5"
  sha256 "2d2346d8700de31d38abddc8be4893f47ddbe42ca436c041ead33225458ae858"

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
