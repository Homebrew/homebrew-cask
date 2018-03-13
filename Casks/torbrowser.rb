cask 'torbrowser' do
  version '7.5.1'

  language 'ar' do
    sha256 'e0443d1f37f0f5c354ce90718f69e3e07e4aa45c1ec4383d34d7b48f0ea41eca'
    'ar'
  end

  language 'de' do
    sha256 'db10b4a3ccbbffdcbddc7d28951e97797f19d8ee01878c96b88c6b2034664204'
    'de'
  end

  language 'en', default: true do
    sha256 'd5da915515bb1508be88615645e6022ca2a97695c67602694d8484baf816af83'
    'en-US'
  end

  language 'es' do
    sha256 'f0990f3ef214ec5e288e27a42cfaf248b61c21d3545e4b09fb330676d0b1dba6'
    'es-ES'
  end

  language 'fa' do
    sha256 'dfc98403f22911e8728605744c0fe39b0fb7308eb88cad8198d0dc2e8f547f59'
    'fa'
  end

  language 'fr' do
    sha256 'a33226125dd500882fb83afeef7c3dbf630f1cf75c8155a4d2f1c1a1bf3bcccf'
    'fr'
  end

  language 'it' do
    sha256 '541171e534423ba00a1faed22641a030cfd4391882e5705e0efe597efc7ef2ee'
    'it'
  end

  language 'ja' do
    sha256 'cc3be822595f271aea02b17bdbcb4053b971c75797c030457b42f2086c0f3a9b'
    'ja'
  end

  language 'ko' do
    sha256 '5629131769902332111c10d5000127478c22e840c221e7a6849ce120ec556ad7'
    'ko'
  end

  language 'nl' do
    sha256 '4d7416036f633f26e6cbc3b7915a23e985e22d665d616eded6adf9dbda46bc30'
    'nl'
  end

  language 'pl' do
    sha256 '431d5862cff465a31fd2f30fa9c2c6b9a6dbfc26d2bacf6bf2208dacfab16121'
    'pl'
  end

  language 'pt' do
    sha256 '0704158619e0cbc535f8713c69a3b7766f48eb53da68ac4ba74736a27ca9a319'
    'pt-BR'
  end

  language 'ru' do
    sha256 'e0229893fb3a171e4eee18eb12bd3d1a344a40c2315e174161cec3043386036e'
    'ru'
  end

  language 'tr' do
    sha256 '6b7d37a204d3eb481cd23224fd8f78f0644c1c26a032c50f25cc790b0cec15ce'
    'tr'
  end

  language 'vi' do
    sha256 'a31f03c2190a0327b30094b71e2173777dbafdd50dbc270634532d46be1d3202'
    'vi'
  end

  language 'zh' do
    sha256 '5b05ed165f6d9271f6681ee39d909b5222c9eb9f99c88b00bbcb30f016a949a3'
    'zh-CN'
  end

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_#{language}.dmg"
  appcast 'https://dist.torproject.org/torbrowser/',
          checkpoint: 'a9b3569ba19d354f07ba787c5957ef7f8b6c06e65cc9ce91aa5bfc41f47f38ee'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  gpg "#{url}.asc", key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  auto_updates true
  conflicts_with cask: 'torbrowser-alpha'

  app 'TorBrowser.app'

  zap trash: [
               '~/Library/Application Support/TorBrowser-Data',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.tor browser.sfl*',
               '~/Library/Preferences/org.mozilla.tor browser.plist',
               '~/Library/Preferences/org.torproject.torbrowser.plist',
             ]
end
