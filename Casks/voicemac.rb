cask "voicemac" do
  version "0.4.1"
  sha256 :no_check

  url "https://download.mrgeckosmedia.com/VoiceMac.zip"
  appcast "https://mrgeckosmedia.com/applications/appcast/VoiceMac"
  name "VoiceMac"
  homepage "https://mrgeckosmedia.com/applications/info/VoiceMac"

  app "VoiceMac/VoiceMac.app"

  postflight do
    set_permissions "#{appdir}/VoiceMac.app/Contents/Info.plist", "a+r"
  end
end
