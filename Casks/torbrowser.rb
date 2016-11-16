cask 'torbrowser' do
  version '6.0.6'

  language 'ar' do
    sha256 '82cab3d815b5fa55efd730f3ec3d6f9b785d372b55bf953c2abf223a8088c4fe'
    'ar'
  end

  language 'de' do
    sha256 'c7c9d810e8dac7b0d8eacf2cc9c234ad77afa1e70d43e676bd768151512e4538'
    'de'
  end

  language 'es' do
    sha256 '2fb735df6b4dde49bf4bec217194f27533b4273fe7c4b656c1a15e21bc1b48b4'
    'es-ES'
  end

  language 'en', default: true do
    sha256 'e3ee440636840d2c7c527b0de976034f1b00498a0178b3ebd7891f67c42b5eef'
    'en-US'
  end

  language 'fa' do
    sha256 '6105385050bbc88b8532b2bede0cee45f05f594ac231872e89c7cab101572773'
    'fa'
  end

  language 'fr' do
    sha256 'bb623729747d3abc8313a98d3be8476cb1c5fccbdc4fc1e4e1526d65e615218c'
    'fr'
  end

  language 'it' do
    sha256 'c123501e2ba4e9a3652d20c01afb09a45946e5c9ac5de971579bf20733e06336'
    'it'
  end

  language 'ja' do
    sha256 '5607746f71ce61ce4453cd6ad9b47b2a27f437a280d560293746390aca2e9180'
    'ja'
  end

  language 'ko' do
    sha256 '1371e62f2bf08d8883bac13f81de381b7b9264db2fc56c1fd8bb31baa7ee8138'
    'ko'
  end

  language 'nl' do
    sha256 'b2a226b0c4967b8fc744401612c16a358007357dcf35d655665bc9c73468e62a'
    'nl'
  end

  language 'pl' do
    sha256 '6b4e61dc728783e639a8d4126cf48d87d4d0703a91621a2556eb4e3d5e80cce1'
    'pl'
  end

  language 'pt' do
    sha256 'ecf1c4a9e0efa6bbf125d3f8296fdf7e546faa365a25d613db07cd7212f5c2cb'
    'pt-PT'
  end

  language 'ru' do
    sha256 'bd6dfcba6039451ab5c84f81a5e9598f9fefd202bdccb73c8561714b34838031'
    'ru'
  end

  language 'tr' do
    sha256 'e27ce5bb8d1a19fb04d864b9f0349db2a9e60ff22fa915f79e344e41e4659547'
    'tr'
  end

  language 'vi' do
    sha256 'd82e0faca5d9ece9ea140f77ee7243fed52afee99c813431b2d99f9e1b3b1e4e'
    'vi'
  end

  language 'zh' do
    sha256 '8e96b7886b3cbe17845bc371690ca6d0b6fb1f87569baeb4c11077d62b4da65f'
    'zh-CN'
  end

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_#{language}.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.tor browser.sfl',
                '~/Library/Application Support/TorBrowser-Data',
                '~/Library/Preferences/org.mozilla.tor browser.plist',
              ]
end
