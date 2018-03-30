cask 'torbrowser' do
  version '7.5.3'

  language 'ar' do
    sha256 'd774f12c24391b9974366a0bfb7858cda10f2432021a7e8503886654b6fd937c'
    'ar'
  end

  language 'de' do
    sha256 '03fb7decf5f9c0730b036554ce5ca7ff235281c837523fe7c5d71b7909a8eafb'
    'de'
  end

  language 'en', default: true do
    sha256 '384614270449014bedf003c44b8daed0539bd9c8b646b6ac9d40cb0943a60629'
    'en-US'
  end

  language 'es' do
    sha256 '0442d761d80ada30c657fc7e47bb5e6f1e27ac135cfbf58c16ac873afdf2f82e'
    'es-ES'
  end

  language 'fa' do
    sha256 'acd17970d885ac4d3dc8f688ad6bc9c805df7e4ed10501d8740fcab8f6076771'
    'fa'
  end

  language 'fr' do
    sha256 '377ebb074d34f626ea5dfd790d901fc94e645f9f1c9fedbc0d9062f6f4b042f7'
    'fr'
  end

  language 'it' do
    sha256 '7233047673f31638ce00c88f24cc10801243132e3e7f753e80a7b0feb1c84c82'
    'it'
  end

  language 'ja' do
    sha256 '95f74de2d22f6613a29b7b38fcb4709f333ea817ff82abcafa48a8843d88f72e'
    'ja'
  end

  language 'ko' do
    sha256 '5b45203ca1eea5913dab6f9bbc183552175b0ab11ed439123f6b42036d88a8fe'
    'ko'
  end

  language 'nl' do
    sha256 '79e66d3c64d055a4132d550c76aaff11e4b2e63f809dc880e669a12d814b230c'
    'nl'
  end

  language 'pl' do
    sha256 'fe52de1d85bda66d84842b0c57ecc33c451af0b7785d279dfdb86f830e55fc0c'
    'pl'
  end

  language 'pt' do
    sha256 'ff714c4fe6ae409ebe0e4d6a154c4a956c18c3d16deb45d83fb0d09ffd0aac84'
    'pt-BR'
  end

  language 'ru' do
    sha256 'be9962ddb9059f41e1c66a44e084de58ff29edd8763e2239377c4d1d59809c6a'
    'ru'
  end

  language 'tr' do
    sha256 '21a2c3b493f8014cd30871e979848205e3ba7f4ef811c13881eed25b0e4d9544'
    'tr'
  end

  language 'vi' do
    sha256 'ecc879d06ef6aa32ecd250c44c90499ce7ee28a0c95dc4010ee3697a267e8b31'
    'vi'
  end

  language 'zh' do
    sha256 '6c6b45ce7dc0e01312cb4f23c910580c10202c874e254aba75aa12d2ebc63bb6'
    'zh-CN'
  end

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_#{language}.dmg"
  appcast 'https://dist.torproject.org/torbrowser/',
          checkpoint: 'd6acc24afce00282fc86419a10ae4109138090dcee88bbe747f608265fd155ac'
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
