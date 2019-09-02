cask 'tor-browser' do
  version '8.5.4'

  language 'ar' do
    sha256 '2ff4fb100e1e5007ccf911eed23c9a07996cbf79b2e5e5c5c38ff5da196863bb'
    'ar'
  end

  language 'ca' do
    sha256 '6e42178f5d2e9418737bbb022f41d417ca7274a54fc800344586be365c92d7fa'
    'ca'
  end

  language 'cs' do
    sha256 'fa40efabcb20d8799a8f00a990834a3ae8efe701d944e909eb5c3e684572192a'
    'cs'
  end

  language 'da' do
    sha256 'ef8e7b6836249918e6821594794795b6199e270ea2e1ee5fcc8767459f30a102'
    'da'
  end

  language 'de' do
    sha256 '8634401221e90c0bad172ec278101033001ea4353475d0e31a007f98dd6312c5'
    'de'
  end

  language 'el' do
    sha256 '124341e492c6f749c8e9bcce2577765540e2160fd4330e0570dd3867bf2e7af7'
    'el'
  end

  language 'en', default: true do
    sha256 '27eca601a89c25df76e928a3818414e587aa1935c148c3f1045bc1aa3eeed9f9'
    'en-US'
  end

  language 'es-ar' do
    sha256 'fb9e1cccb5da01c01dce394e17728b32e70f96aff64532b9ec0bc48b9362ac81'
    'es-AR'
  end

  language 'es-es' do
    sha256 'cf7e219c9a94ab2afecf60e67d0686207708055c18359f7d3369a05bb1bb4457'
    'es-ES'
  end

  language 'fa' do
    sha256 'cfa012aa0000e610a7b3a12514ce2fc169c3768e8ed78e43055a15dcd24c7db3'
    'fa'
  end

  language 'fr' do
    sha256 'a9ed0768494d9017d96ba96f1b781dfedd1e4c559fde8fbe21939ffff7cc428d'
    'fr'
  end

  language 'ga' do
    sha256 '98286ff7d5b8ac8a352d968d5d2ad7decd76507ef8dfc4d7702ce8c078bd6bb5'
    'ga-IE'
  end

  language 'he' do
    sha256 '239aa3297fb5bf6cf3e3c2f3e5e29dd04b81bc0563da6edede9a032255e90b6f'
    'he'
  end

  language 'hu' do
    sha256 'bec74e8a940765db5ddcb23fec903f95c36e1cf10b5d1deb618995a398202baf'
    'hu'
  end

  language 'id' do
    sha256 'e0b9e2a65acaf23a7a90e24ea700635760641cb3f858eeff3ebd251583df2939'
    'id'
  end

  language 'is' do
    sha256 'e53b75588b62fb213770d9e292ec757a4b63a4b75605dcb1d6445dfb1ec3dfd3'
    'is'
  end

  language 'it' do
    sha256 '3757eacc3f5442d47920368f57f74133373dd18085a60c09c96bd29fae6c83a9'
    'it'
  end

  language 'ja' do
    sha256 '7a15f07320d8bf942168d7e224b6f8497149f3967025a860a2e0523fe0a13952'
    'ja'
  end

  language 'ka' do
    sha256 'fa8b88f27f9381aff6c828b755c7ab6fda10b35ca17c52b55bce26cce7480a56'
    'ka'
  end

  language 'ko' do
    sha256 '53d756895815c2f3a0e7501997005a54ea0a7e4a83f59a5068d7d717af43e900'
    'ko'
  end

  language 'nb' do
    sha256 '17646ab237919740ff617b91a6d696d644f0d433b9053b99fad09e8665a3328d'
    'nb-NO'
  end

  language 'nl' do
    sha256 'e47d116982cde091db29ffd82abb930093e12546799ffcdf08330e10cb4ce971'
    'nl'
  end

  language 'pl' do
    sha256 '5390392c23144f99843edfd54d02067c5a8f21637c1304eb7ec9c667a307873d'
    'pl'
  end

  language 'pt' do
    sha256 'a1fe392b421868d32515d2fd432972080cedbd0567b7e7b31f01f5eeb0887175'
    'pt-BR'
  end

  language 'ru' do
    sha256 '5a3410c9ddb565ed330acb6f3cd633b869865dedddf892b55c5c4e7408972215'
    'ru'
  end

  language 'sv' do
    sha256 '86a304ffa0e5695944cd3195c512889fbc5a4a6254490bf0908d877cb4145d3e'
    'sv-SE'
  end

  language 'tr' do
    sha256 'beb278055f2b4816c1579ff6c1278e206ef81487e94857f7f10c5061de64b0fc'
    'tr'
  end

  language 'vi' do
    sha256 '8879a72a643f57e19aa42104a14e5626b8868bf478b5d142babfebaadb5dc67e'
    'vi'
  end

  language 'zh-cn' do
    sha256 '2a4d9a8cdf9759d3e1c8c877ff8f9cb7c905e52cab6937c12d58694507859f9c'
    'zh-CN'
  end

  language 'zh-tw' do
    sha256 '27f1c0a296042e87b781008c08fb11453330c8372cc8415d167b3fead5292a09'
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
