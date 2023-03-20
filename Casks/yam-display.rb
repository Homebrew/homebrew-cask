cask "yam-display" do
  version "2.4.3"
  sha256 "d65d2711ab57e01866f19fc89b4a6a448a30bec2bf309d6b66138778ccf1fea0"

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
