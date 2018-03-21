cask 'torbrowser' do
  version '7.5.2'

  language 'ar' do
    sha256 'a6f4e256477bd168aff37145e984c676c963b548399f4d063b8b26316a4b6afc'
    'ar'
  end

  language 'de' do
    sha256 'ac07504b497afeac28db3b7c6e6015cfa1269880fa5419f22a90b330a9a86e71'
    'de'
  end

  language 'en', default: true do
    sha256 'c93fd53c4d77259ac936a20b9ecad0ce2ca2298f246f88829cb2e6f8d4c5d7b9'
    'en-US'
  end

  language 'es' do
    sha256 'f525a6f0372fdbb9b8bda28615de346bdec5a61771a88144de1e40c20f0aa841'
    'es-ES'
  end

  language 'fa' do
    sha256 '15b7176f46712cedd07a0b86d5e71dfbd3232df28722a703fb1eb810ee6c420c'
    'fa'
  end

  language 'fr' do
    sha256 'ec638d6ec740a9cb8d409ab2f2850b4ae0247b31d3f3f470b75a44e4554926a6'
    'fr'
  end

  language 'it' do
    sha256 '51826c5750e0b283d2137416a8b29ed58a23b65c20d61153f32319ba2107bdf9'
    'it'
  end

  language 'ja' do
    sha256 '9873baafca959f51727563722f4cd2bb5ec8bcadc211178bf9cc43210a3b448d'
    'ja'
  end

  language 'ko' do
    sha256 '7543a19d00760115a754302135a89872d4b8de4110a50987bd3a415ee1148aa5'
    'ko'
  end

  language 'nl' do
    sha256 'b3eacb1eb81126405b6ec561867fe5d20a18c9dc3645361403ee401656fa0bba'
    'nl'
  end

  language 'pl' do
    sha256 'ea916e8452a2994703e229cc691048f0794ee909d6e8d63a47b9527474e73a78'
    'pl'
  end

  language 'pt' do
    sha256 'fc97ccc828cd7016e7b598e9a4a0dc3f978cb1d5e07a65b7b8b559715f8c919d'
    'pt-BR'
  end

  language 'ru' do
    sha256 '324814f422df90858b011f12e2fa6ae2c3d4e934d3c20ead4c0487624ac74b89'
    'ru'
  end

  language 'tr' do
    sha256 'da1abc9dc7ef6df21ad3b9eeca9793b434c9b149c059761aa05533f4f8b2deaf'
    'tr'
  end

  language 'vi' do
    sha256 '71d80bf8c7d0c542dacd7d932b848e2d2ab94879cfb5ba4298cf77c63f44e08c'
    'vi'
  end

  language 'zh' do
    sha256 '244e02c15400dfb54c406f020c74a17509a8c7d690c67474a6dc2cf3fdc5407f'
    'zh-CN'
  end

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_#{language}.dmg"
  appcast 'https://dist.torproject.org/torbrowser/',
          checkpoint: 'd85ecd04b1e022e7434002fd093bebfc2715c696498636190c334c77d31a6326'
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
