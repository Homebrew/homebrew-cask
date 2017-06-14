cask 'torbrowser' do
  version '7.0.1'

  language 'ar' do
    sha256 '96127d410647bc63b592238e7a5473a63c9588a88fbc501cbce93b02e546bf2e'
    'ar'
  end

  language 'de' do
    sha256 '2e72480ac503b95aa77d7fbce22202dc7b08901efa78b006e58f80bcc4fcb387'
    'de'
  end

  language 'en', default: true do
    sha256 '7ebbede7a17fe69767f313181da7b1a55cfac5dda749bc7a5a9eeb7b37464a50'
    'en-US'
  end

  language 'es' do
    sha256 'f3e9c12dc366d6523a1c37b8d724d7211ea0effcedbde9630d24221b2dd40591'
    'es-ES'
  end

  language 'fa' do
    sha256 'a0db74f53d544434100adb6fce0874f87779c03d0ab2a9116ed55c1f17547f54'
    'fa'
  end

  language 'fr' do
    sha256 '05f65f1fb05ed3a463470a4b4457cdd0e278d73d198955ecd1a3ed1e8522c3aa'
    'fr'
  end

  language 'it' do
    sha256 '5efbfa0fa5023cbc54a6082b2bde4caa2e8d593ec1910e138262a337e3078018'
    'it'
  end

  language 'ja' do
    sha256 'fc6ce46c923328e33949c98653bd3eb373ab8df86dfb6708326416ecec547824'
    'ja'
  end

  language 'ko' do
    sha256 '0d84991dbd8b539fdb52a9fa6bbb20bd95a7c8121c7b050b5fa2c7384ec4e2e3'
    'ko'
  end

  language 'nl' do
    sha256 '0658df5d9d63a641d3b864557e374da5aa50173dfe487239eb1ac6b4bddf38e6'
    'nl'
  end

  language 'pl' do
    sha256 'd5a52259400bb0340729d6d83d4ec09cf3043bbf59e8fb639d14f55a4baa1749'
    'pl'
  end

  language 'pt' do
    sha256 '75cc33c958f746134ad63730c5007aa2bbaf61649f8078d4ff98d05b6b6bf0f3'
    'pt-BR'
  end

  language 'ru' do
    sha256 '44e354e5b11c6d75a2218962733b20bd47cc3384dcd8cf1362dd552253215466'
    'ru'
  end

  language 'tr' do
    sha256 '9dc7bcc993c01cc56e0d760c9be79db0107a80497efaa60a6fcb1a282662bb5e'
    'tr'
  end

  language 'vi' do
    sha256 '03cf91e76553cc8eedd9192604ca2ce7d643fd2cebacb3d85b46d05f35346500'
    'vi'
  end

  language 'zh' do
    sha256 'addd02e8246e7fe775c2407a58f6a6521a12958b8ab05e699b5588f95af9f01d'
    'zh-CN'
  end

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_#{language}.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  gpg "#{url}.asc", key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  auto_updates true

  app 'TorBrowser.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.tor browser.sfl',
                '~/Library/Application Support/TorBrowser-Data',
                '~/Library/Preferences/org.mozilla.tor browser.plist',
              ]
end
