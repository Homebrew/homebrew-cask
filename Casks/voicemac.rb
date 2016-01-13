cask 'voicemac' do
  version :latest
  sha256 :no_check

  url 'https://download.mrgeckosmedia.com/VoiceMac.zip'
  appcast 'https://mrgeckosmedia.com/applications/appcast/VoiceMac',
          :checkpoint => '5d43ea3a7e616074ea46cc1ae3d9edac151d6368aa890932e015374f742f99b9'
  name 'VoiceMac'
  homepage 'https://mrgeckosmedia.com/applications/info/VoiceMac'
  license :isc

  app 'VoiceMac/VoiceMac.app'

  postflight do
    set_permissions "#{staged_path}/VoiceMac/VoiceMac.app/Contents/Info.plist", 'a+r'
  end
end
