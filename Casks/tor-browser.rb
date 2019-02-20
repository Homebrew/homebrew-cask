cask 'tor-browser' do
  version '8.0.6'

  language 'ar' do
    sha256 '2da241ad9916a67b36d613485c8c19e7a51ff4035acc50b064fa514ae2495341'
    'ar'
  end

  language 'ca' do
    sha256 '4725ef874354ff03324a3f5f4816a65a2614a10e4572ca9a7291548daeb4a5d6'
    'ca'
  end

  language 'da' do
    sha256 '31efb419ea95fa2ca9ba6561649e98619d6079778d85982e2f06df08087e48c5'
    'da'
  end

  language 'de' do
    sha256 '156a20d821ddb40767c6c4340738abf5f4a9fbe1d4cf3686991a6c7a557160aa'
    'de'
  end

  language 'en', default: true do
    sha256 'cb7424c38270a89d16c2bd3ea34d6349c8c8877a2b3cc6fbe00c4b54e6a80d37'
    'en-US'
  end

  language 'es' do
    sha256 'f25ab6df08274644c1b29c5914fe9584b4495bf9afbf365b80cd9f82093dc9c9'
    'es-ES'
  end

  language 'fa' do
    sha256 'a73ee117cd00fc3378fc335a930e34a825e7a924b16a701785163f893926474f'
    'fa'
  end

  language 'fr' do
    sha256 '6e9aa272134a2a552c32fd697ea6f3bc114f1e75297f5aa03637dca213b5cd5d'
    'fr'
  end

  language 'ga' do
    sha256 '25c3710e81f52972e4b2a347a1c7b5fba3c8bb6d50897ae422cb331e8298aa42'
    'ga-IE'
  end

  language 'he' do
    sha256 'd048347356d301f4a843e21190d70346c5061d3f92a8bcd615aed04d9c0da0e3'
    'he'
  end

  language 'id' do
    sha256 'fa6fea9a100806caa52aa07f93bd9c379359df2c9430ec5cb062d62ab2945c2e'
    'id'
  end

  language 'is' do
    sha256 '0b76bfceaf4a7869e9463d02c021e7c61c5df28f254552dc457b84c024413e86'
    'is'
  end

  language 'it' do
    sha256 '468ce24e0265f0249e9f9577341b01ff38d2d723f2f553f5736336c481336371'
    'it'
  end

  language 'ja' do
    sha256 '6b1e6aca3ff9cf667db7443c9bff0843566a5f642ef9bab0a2c99e9d13a7a8be'
    'ja'
  end

  language 'ko' do
    sha256 '93951c68ec50d18fb170eb4d55f8de7464b659c1009443ff5530bb239d68a73c'
    'ko'
  end

  language 'nb' do
    sha256 'ce43ac18818cbe89e162f4d9d0a721ba5b2602130b0999a95cd4678f29454510'
    'nb-NO'
  end

  language 'nl' do
    sha256 '8682a1c4927ff12b5ae4b90d6a33a73bef0b41b0b5420c4473c5e786208d2fd2'
    'nl'
  end

  language 'pl' do
    sha256 '5dc9d49667627a176b61f647c6be37b07bc0f3f603ecd2cf41ae7fc9c42c8b7c'
    'pl'
  end

  language 'pt' do
    sha256 '319935adfd9d8d323e09234668a6e41d0f6b01d92ef62ee66b17353ee456a5fe'
    'pt-BR'
  end

  language 'ru' do
    sha256 '860dbafb6dcb7004019145448927066d0a8979625ae0809a32e43779f20b3b79'
    'ru'
  end

  language 'sv' do
    sha256 '62e51c025a38a142585b0243b9567c669a2f2716a7028cc8001818b76c7ebe1a'
    'sv-SE'
  end

  language 'tr' do
    sha256 '8be93319e928fdb5a3c273f729e222a648c3d37de39f58e07c06681463fd7839'
    'tr'
  end

  language 'vi' do
    sha256 '430f788d23490989a2da2c40989e5b3142f476f6d31c23d0164e93c511151d29'
    'vi'
  end

  language 'zh-cn' do
    sha256 'bda255143fb1bb5bfe407812aab2c92b1158d4701503c3daf0240e2e3c52063f'
    'zh-CN'
  end

  language 'zh-tw' do
    sha256 'd2dedfe1f814c1db95ba93b2e169d23b4b847c12cea33a1d30e9fa4b12610e7b'
    'zh-TW'
  end

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_#{language}.dmg"
  appcast 'https://dist.torproject.org/torbrowser/'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'

  auto_updates true
  conflicts_with cask: 'tor-browser-alpha'

  app 'Tor Browser.app'

  zap trash: [
               '~/Library/Application Support/TorBrowser-Data',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.tor browser.sfl*',
               '~/Library/Preferences/org.mozilla.tor browser.plist',
               '~/Library/Preferences/org.torproject.torbrowser.plist',
               '~/Library/SavedApplicationState/org.torproject.torbrowser.savedState',
             ]
end
