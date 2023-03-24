cask "voicemac" do
  version "0.4.1"
  sha256 :no_check

  url "https://download.mrgeckosmedia.com/VoiceMac.zip"
  name "VoiceMac"
  desc "Google Voice client"
  homepage "https://mrgeckosmedia.com/applications/info/VoiceMac"

  livecheck do
    url "https://mrgeckosmedia.com/applications/appcast/VoiceMac"
    strategy :sparkle
  end

  app "VoiceMac/VoiceMac.app"

  postflight do
    set_permissions "#{appdir}/VoiceMac.app/Contents/Info.plist", "a+r"
  end
end
