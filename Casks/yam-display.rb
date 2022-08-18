cask "yam-display" do
  version "2.4"
  sha256 "a8a316bca01e47efeadae15309237c519427a110f5cba49d16b28432b4878af1"

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
