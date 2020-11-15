cask "winx-hd-video-converter" do
  version :latest
  sha256 :no_check

  url "https://www.winxdvd.com/download/winx-hd-video-converter-for-mac.dmg"
  name "Winx HD Video Converter"
  desc "HD video converter"
  homepage "https://www.winxdvd.com/hd-video-converter-for-mac/"

  app "Winx HD Video Converter for Mac.app"
  
  zap trash: [
    "~/Library/Preferences/com.winxdvd.hdvideoconverterformac.plist",
    "~/Library/Caches/com.winxdvd.hdvideoconverterformac/",
  ]
end
