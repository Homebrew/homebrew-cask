cask 'torbrowser' do
  version '7.5.6'

  language 'ar' do
    sha256 '59cf9372fa30cd0039e5468d439cda3442b297f1733106eb37441dfdce719c42'
    'ar'
  end

  language 'de' do
    sha256 '61ae2d781a67f35ef99e8baf8997bc1ee3f560beaf2348b4628908828804c208'
    'de'
  end

  language 'en', default: true do
    sha256 'e84ced0cf44f0871567cf4d8c4c696ee0edb41bee300fb711d99bab7c8912920'
    'en-US'
  end

  language 'es' do
    sha256 '354f14aecb2fb8b5c8a60d9f1dc89d2769230567b57ebb147490f28cf16d1040'
    'es-ES'
  end

  language 'fa' do
    sha256 '17247416c5b96867b3d481779f6a246d87d8a00c15d0ff617a4621b3a41b66ad'
    'fa'
  end

  language 'fr' do
    sha256 'c1e69d2c7522c208a0ee491d8aefd0b231ed4c31adda894890b6fb80946dda1d'
    'fr'
  end

  language 'it' do
    sha256 'aee36684ba18ed1632cc014e401e4c15ae11290ae48e50f3ece8c18cce6661ae'
    'it'
  end

  language 'ja' do
    sha256 'cf09f9707c730bb3866b1cdd8ba0d864d3371b4974324f33b7780d2922319ab9'
    'ja'
  end

  language 'ko' do
    sha256 '63af012722a5fe1bdf435044c7d68a4bcfcd5c537209fbd76daf7a548f3836fa'
    'ko'
  end

  language 'nl' do
    sha256 '742cd4fe12d03860bc646a6a44431a423439904634561e513ac3b4bffb9bf37f'
    'nl'
  end

  language 'pl' do
    sha256 '31e36e4edad7dc59bd0aee0d6bdd6ef0f4483a3e1e34bf99d9e977eecd43e398'
    'pl'
  end

  language 'pt' do
    sha256 'faec6d02800e9afab386631793e09e29e4cff4652831c6cbd07e76162e4b1e5f'
    'pt-BR'
  end

  language 'ru' do
    sha256 '63f24f5e8ead4f221c8123e6202c98883382636bf704a008b58b2e800d9a2afb'
    'ru'
  end

  language 'tr' do
    sha256 '733f073c06080ae63cc6a659ab5e694ad0a9680ecd08e90190dce808af557a57'
    'tr'
  end

  language 'vi' do
    sha256 '87705829ee38086f0292340b3654576addbb24c43d756709a25a23c9a22c4de6'
    'vi'
  end

  language 'zh' do
    sha256 'd92ed49f0075938aa2d339588f218d175be708a50e4a351f9beec671e320f697'
    'zh-CN'
  end

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_#{language}.dmg"
  appcast 'https://dist.torproject.org/torbrowser/'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  gpg "#{url}.asc", key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  auto_updates true

  app 'TorBrowser.app'

  zap trash: [
               '~/Library/Application Support/TorBrowser-Data',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.tor browser.sfl*',
               '~/Library/Preferences/org.mozilla.tor browser.plist',
               '~/Library/Preferences/org.torproject.torbrowser.plist',
             ]
end
