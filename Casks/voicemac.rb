cask :v1 => 'voicemac' do
  version :latest
  sha256 :no_check

  url 'http://download.mrgeckosmedia.com/VoiceMac.zip'
  appcast 'https://mrgeckosmedia.com/applications/appcast/VoiceMac'
  homepage 'https://mrgeckosmedia.com/applications/info/VoiceMac'
  license :unknown

  app 'VoiceMac/VoiceMac.app'
  postflight do
    system '/bin/chmod', '--', 'a+r', "#{staged_path}/VoiceMac/VoiceMac.app/Contents/Info.plist"
  end
end
