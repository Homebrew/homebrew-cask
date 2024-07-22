cask "winx-hd-video-converter" do
  version "6.8.2"
  sha256 :no_check

  url "https://www.winxdvd.com/download/winx-hd-video-converter-for-mac.dmg"
  name "Winx HD Video Converter"
  desc "HD video converter"
  homepage "https://www.winxdvd.com/hd-video-converter-for-mac/"

  livecheck do
    url "https://www.winxdvd.com/hd-video-converter-for-mac/updatelog.htm"
    regex(/for\s*Mac\s*v?(\d+(?:\.\d+)+)/i)
  end

  app "Winx HD Video Converter for Mac.app"

  zap trash: [
    "~/Library/Caches/com.winxdvd.hdvideoconverterformac/",
    "~/Library/Preferences/com.winxdvd.hdvideoconverterformac.plist",
  ]

  caveats do
    requires_rosetta
  end
end
