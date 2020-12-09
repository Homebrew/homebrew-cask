cask "winx-hd-video-converter" do
  version "6.5.2,20201202"
  sha256 "e948e126bfcb0f3827714ee98c35039166c0af420e3c8e0f911cd61ab3104143"

  url "https://www.winxdvd.com/download/winx-hd-video-converter-for-mac.dmg"
  name "Winx HD Video Converter"
  desc "HD video converter"
  homepage "https://www.winxdvd.com/hd-video-converter-for-mac/"

  app "Winx HD Video Converter for Mac.app"

  zap trash: [
    "~/Library/Caches/com.winxdvd.hdvideoconverterformac/",
    "~/Library/Preferences/com.winxdvd.hdvideoconverterformac.plist",
  ]
end
