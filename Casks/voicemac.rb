cask 'voicemac' do
  version :latest
  sha256 :no_check

  url 'https://download.mrgeckosmedia.com/VoiceMac.zip'
  appcast 'https://mrgeckosmedia.com/applications/appcast/VoiceMac',
          :sha256 => '6f21e48a6b74a943aea0ae08effa4ff520d5725826081323e169671558383a4d'
  name 'VoiceMac'
  homepage 'https://mrgeckosmedia.com/applications/info/VoiceMac'
  license :isc

  app 'VoiceMac/VoiceMac.app'

  postflight do
    set_permissions "#{staged_path}/VoiceMac/VoiceMac.app/Contents/Info.plist", 'a+r'
  end
end
