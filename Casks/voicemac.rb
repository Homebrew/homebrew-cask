cask 'voicemac' do
  version :latest
  sha256 :no_check

  url 'https://download.mrgeckosmedia.com/VoiceMac.zip'
  appcast 'https://mrgeckosmedia.com/applications/appcast/VoiceMac',
          :checkpoint => '0aa78497d1d83ad029d8fbd0b5635eda0dd519b47ef92b7f2ff9a5621e447942'
  name 'VoiceMac'
  homepage 'https://mrgeckosmedia.com/applications/info/VoiceMac'
  license :isc

  app 'VoiceMac/VoiceMac.app'

  postflight do
    set_permissions "#{staged_path}/VoiceMac/VoiceMac.app/Contents/Info.plist", 'a+r'
  end
end
