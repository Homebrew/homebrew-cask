cask "voicemac" do
  version "0.4.1"
  sha256 "527b3356c11d1ef94787445829769983e9ac5c99e9cea724ad829148c78bcd7a"

  url "https://download.mrgeckosmedia.com/VoiceMac.zip"
  appcast "https://mrgeckosmedia.com/applications/appcast/VoiceMac"
  name "VoiceMac"
  homepage "https://mrgeckosmedia.com/applications/info/VoiceMac"

  app "VoiceMac/VoiceMac.app"

  postflight do
    set_permissions "#{appdir}/VoiceMac.app/Contents/Info.plist", "a+r"
  end
end
