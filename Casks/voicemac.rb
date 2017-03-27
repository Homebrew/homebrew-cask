cask 'voicemac' do
  version '0.4.1'
  sha256 '527b3356c11d1ef94787445829769983e9ac5c99e9cea724ad829148c78bcd7a'

  url 'https://download.mrgeckosmedia.com/VoiceMac.zip'
  appcast 'https://mrgeckosmedia.com/applications/releasenotes/VoiceMac',
          checkpoint: '733a1a43e7dc12abe055415df8c833b83d9817e8843247c1660fa7d9216bbcc9'
  name 'VoiceMac'
  homepage 'https://mrgeckosmedia.com/applications/info/VoiceMac'

  app 'VoiceMac/VoiceMac.app'

  postflight do
    set_permissions "#{appdir}/VoiceMac.app/Contents/Info.plist", 'a+r'
  end
end
