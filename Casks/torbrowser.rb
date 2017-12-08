cask 'torbrowser' do
  version '7.0.11'

  language 'ar' do
    sha256 'f87e446b561bd61221938ff52cd2d658f7498dab5b5f7fa2ec03d0758fa6e8ca'
    'ar'
  end

  language 'de' do
    sha256 'a3a806c52461751593aa848f2e7b2744285a6e94142f571680bbaefde92914e6'
    'de'
  end

  language 'en', default: true do
    sha256 '5143e4a2141a69f66869be13eef4bcaac4e6c27c78383fc8a4c38b334759f3a2'
    'en-US'
  end

  language 'es' do
    sha256 '848bac8de478c16ff16cf8f7ffa19ae811f8a3828c05ee7d20bc7d132c733c15'
    'es-ES'
  end

  language 'fa' do
    sha256 '899ef1223b554ec73930dbbe15104347eb8e6a2c7d057fd3b5b658250e5a8474'
    'fa'
  end

  language 'fr' do
    sha256 'a5ae112bf50c0d0adf6c954cc4289605009328eb3409ef0df1c6927ba1622881'
    'fr'
  end

  language 'it' do
    sha256 'db4dbbb3bcb065889b7b385d10d7375a0e9aad21bb6ea46f54c3fb0dc3ac014a'
    'it'
  end

  language 'ja' do
    sha256 'f250e864e75e4e77298b7783f4bd42edc3505e6edaa1c9391803d3955fcf84e8'
    'ja'
  end

  language 'ko' do
    sha256 'd6bfd155e35ff345e201879f0eaba334770f1a12bfd97670e48d26a237c5c498'
    'ko'
  end

  language 'nl' do
    sha256 '9df0fa020f0b13b355ad13c1e24811e0f99b7d8193ec74ad4e091bac8d972395'
    'nl'
  end

  language 'pl' do
    sha256 'd9f155f03df1b29385b46964eadfc39a12d6693c83a79c57d5c730f356afd3e5'
    'pl'
  end

  language 'pt' do
    sha256 '8d1665d9435924ddb2de7b20be07589a084a99da06f2cd8232b82d34bb9c0d05'
    'pt-BR'
  end

  language 'ru' do
    sha256 '3dd7102b394d733bed196c3e3c67f0e787ce369b9ff806577d8cb0c97e7e29c1'
    'ru'
  end

  language 'tr' do
    sha256 '34ea60398a649a1ba424324f7aaacc42d0d642dc2a46f8ebdaa6b2742ff32bfa'
    'tr'
  end

  language 'vi' do
    sha256 '6fa9a1d0f626354fbaf0e6bdfc91e56fd64956c0ce92f5fa73c7f76c5485ad21'
    'vi'
  end

  language 'zh' do
    sha256 '52d7db2ec5132d5e3fab89d534610b0e6d8fd008e06643a499f35d50137ea5e0'
    'zh-CN'
  end

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_#{language}.dmg"
  appcast 'https://dist.torproject.org/torbrowser/',
          checkpoint: 'f3c721b2413dbda6e5186b17c894936cf50156600708cca2bcd3c209d27f3f84'
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
