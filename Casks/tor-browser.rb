cask 'tor-browser' do
  version '8.0.3'

  language 'ar' do
    sha256 '4d4655ae29484de4dc4b5e905616d1e138d582c0484bc3d639828e84027061d4'
    'ar'
  end

  language 'ca' do
    sha256 '705ed3d89671393b2159bb07df6128580d03427ca30afb238cdeb2298411b899'
    'ca'
  end

  language 'da' do
    sha256 '7179aa2be5cf4d63620a36f97fd25be79e23a7bef007bc80c0bbaf05897bb9a1'
    'da'
  end

  language 'de' do
    sha256 '8bc8616ab6cc94514f1077d494687f2c88a1cdbb54f28dce24c1c9b27f0426fe'
    'de'
  end

  language 'en', default: true do
    sha256 '706c51407f23e18eb21899dadcb9b861b1a3d394a02838c63bd8eb6c61c6ab01'
    'en-US'
  end

  language 'es' do
    sha256 '9d40fd2deb4ded2a2c61447cf02c6e11188c1c958ea6e49fe632757a9f715dce'
    'es-ES'
  end

  language 'fa' do
    sha256 '8833906c14b40849be0e54cb1d58307ebb071fd622a9fef0aca109501420441c'
    'fa'
  end

  language 'fr' do
    sha256 '48f69feec85041df2b420b1cc1f55a81816656ad60e593d81a5b6b38766a1ae9'
    'fr'
  end

  language 'ga' do
    sha256 '916521b2a677ea6a613fb1309c7edea6c35eb8404537b35a5d1e7dcb4da4d1d9'
    'ga-IE'
  end

  language 'he' do
    sha256 '0536d7c969c1ec8675d8a854a31297280d115e3c00fc5861135d35a7bc31f3a4'
    'he'
  end

  language 'id' do
    sha256 '82c6a50275ecec14b0e54aee74801aecb1c2a7a0e14ed0612ef70537bc40b90d'
    'id'
  end

  language 'is' do
    sha256 '88e498457fdc5274337b12767cb803a8ef1a5782ba45a2b601691febbaedf582'
    'is'
  end

  language 'it' do
    sha256 'f83659604e06ff8684b06d182549bb1951a6329abdf7d697ec427c168136fa52'
    'it'
  end

  language 'ja' do
    sha256 '268b981704ab8ce228260c772984ddc18e12985f4657767e6abf34b00073fe88'
    'ja'
  end

  language 'ko' do
    sha256 '0b255a24fbe1b0081b6a57a51f8ed8879e49793841906d0d92cba436cb4a7dbe'
    'ko'
  end

  language 'nb' do
    sha256 'a5961de31cfb2d0450c2e83b9f0d452ec056db716c190a480d784270c2e2bb5c'
    'nb-NO'
  end

  language 'nl' do
    sha256 'ae22853eb6e832f33cf487c00d44e5bf81f2f76a1a36328b4f209f48b1492c1d'
    'nl'
  end

  language 'pl' do
    sha256 '5e364df1ef7c30787c3f911a24fcd5fab1d55f3807eac8e861853e218f9e7638'
    'pl'
  end

  language 'pt' do
    sha256 '6603fc4cae13fcda93b21c6040cdceac6eb52f1da7259e56fab9bf16973db998'
    'pt-BR'
  end

  language 'ru' do
    sha256 '3218532197b20ca3ed3ceed39a99f06ea9139f3e2a4a2146b4f36d4e94d6951a'
    'ru'
  end

  language 'sv' do
    sha256 'ee5a4106fb8dd3ff286f9dcf5b0f83dd6f28d60991e25fcebc9707532dbdd4ff'
    'sv-SE'
  end

  language 'tr' do
    sha256 'beba4b5d4d1b7a1e47f0b1c3ba429b8b783241463fa7b3a6cbcdc1d55202df3e'
    'tr'
  end

  language 'vi' do
    sha256 '955a620073a2ef79a2d6167b1b9da5d79a0b2efbb6abf9ebe79a328129d453e3'
    'vi'
  end

  language 'zh-cn' do
    sha256 '4e997ed550a700a62a84d9a85f6cf47ba759798ad57e0612910dfb2ccf854df0'
    'zh-CN'
  end

  language 'zh-tw' do
    sha256 'dbc39a27c82d0953fcda0385567fe612879334024fb8699aa6fb72c7b412dd16'
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
