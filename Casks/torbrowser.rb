cask 'torbrowser' do
  version '7.5.5'

  language 'ar' do
    sha256 '2f438f8bb5dae40422b1433bb764a288e41b9cd9e17727947825c25b90fcce45'
    'ar'
  end

  language 'de' do
    sha256 '696f550439cf531000071e63118d1ea8414349fbaf10075533e5fa1f7370ffd2'
    'de'
  end

  language 'en', default: true do
    sha256 '2b445e4237cdd9be0e71e65f76db5d36f0d6c37532982d642803b57e388e4636'
    'en-US'
  end

  language 'es' do
    sha256 '003f83556d6b7350e7b6076d73e698a2cb8b87c909afbacdec1ab4814ead15ab'
    'es-ES'
  end

  language 'fa' do
    sha256 '2193cf47a65f203393df615a083e256e98f76aaafd593f6ef6aac0e9e31696c8'
    'fa'
  end

  language 'fr' do
    sha256 'd0fe83ea001214ab3c68fd70edd1ae4bf1c5046b5f03bb94bf9f3b861c7884f8'
    'fr'
  end

  language 'it' do
    sha256 '53aa9102b865c640e0c22caaea214670adbc940ce66bf8976031e93860b535fd'
    'it'
  end

  language 'ja' do
    sha256 'ec48f2b729667cac818c82f6a7d4d384891fb443c80d0459f807f5d51d4bb22d'
    'ja'
  end

  language 'ko' do
    sha256 '7489013796094924fe4a42c036b1f7239a16b8c07aff7f8826d4b18033c38c7a'
    'ko'
  end

  language 'nl' do
    sha256 '3bfd35aa07fa2a3505b21776abcf0ffe74fc240c7bfb29f10fe407198092dceb'
    'nl'
  end

  language 'pl' do
    sha256 '65af2da645cb929ed1b5a924dee11e1b09d8c9c09b208cc5bf81dce80e0e06a7'
    'pl'
  end

  language 'pt' do
    sha256 '150837d25962e824a42b94d8cb9e3119ad7c3975839cedd5e43589afc5a25ffc'
    'pt-BR'
  end

  language 'ru' do
    sha256 '5a12bc7d2a9edc7b20bfe2e49f114b8ccfd05ad94c0236f579b4ba5c971db867'
    'ru'
  end

  language 'tr' do
    sha256 'da7a802585725507c03b52999c53ce07c1f9943ece9ddb4e4031f8685893e6be'
    'tr'
  end

  language 'vi' do
    sha256 '82d5681c201651b0e5edc92a58a546ed84fa625738e3e2d2e874528efc5e51e9'
    'vi'
  end

  language 'zh' do
    sha256 'e586ec17fb90be689b94486d0de31a803f044631e1e5aa28c32106a04844f2a9'
    'zh-CN'
  end

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_#{language}.dmg"
  appcast 'https://dist.torproject.org/torbrowser/'
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
