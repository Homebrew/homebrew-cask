cask 'torbrowser' do
  version '7.0.9'

  language 'ar' do
    sha256 'f0c1eccd9df897d15a60fb53e40f35bcf926232cf86946136be3c2389a6b13fa'
    'ar'
  end

  language 'de' do
    sha256 '94f90d9d6d6f6afbededb39f4f262965b921031735e7bd03df842c065cc41ce5'
    'de'
  end

  language 'en', default: true do
    sha256 'c37ab966666800fe14893ea8ab6c873a3483a6a63ac98eedba04430ae5516281'
    'en-US'
  end

  language 'es' do
    sha256 'ecc848cdb676dd5addf3a3e4810722cf44fe9cf76b46aaeae331650b5ce8b723'
    'es-ES'
  end

  language 'fa' do
    sha256 '8fcf66ba98ff08489fc3723d2930714acc934d85b4e04104cce6fa68b21898af'
    'fa'
  end

  language 'fr' do
    sha256 '2e6be7e169e6633ec83caa9240374d89160c1dd560c49790730625cb812d21c4'
    'fr'
  end

  language 'it' do
    sha256 'af862b68b3b49093c22104f9c81efc522a9ce3fe3abb3dad32c0d9c46acd924d'
    'it'
  end

  language 'ja' do
    sha256 '07167333c62328e57263bdb40fbb53ec172e384b9665b1284488f16ea9ec11dd'
    'ja'
  end

  language 'ko' do
    sha256 '3773827dfa64c0caa708b6b1903bc54182717c877238fe81cec5e6dbdb570632'
    'ko'
  end

  language 'nl' do
    sha256 'd972c37bc2ebd0a59ef756e143b19833c8c540db9b9d8ab9b2bd3812fc650aa4'
    'nl'
  end

  language 'pl' do
    sha256 '6bddc3456d093af3b2954dfdf3f1ac8c4971acbd0d7a76707a4fb0ea15c74a28'
    'pl'
  end

  language 'pt' do
    sha256 '7d0b54ca5e07571a241c358333376f2d419683f4c32e153eab4605e8c82ac604'
    'pt-BR'
  end

  language 'ru' do
    sha256 '1b13d68c4bef48ef37d30529f3677b82bb3ab248bdef99f6af87e920447a0b68'
    'ru'
  end

  language 'tr' do
    sha256 '8eed6fd738f900aac5b9ccb404671e84ccae275bf0fc07cccf5587ac5bdb3847'
    'tr'
  end

  language 'vi' do
    sha256 '9762e83274d9f3db069e61c1db41a2a6b76a892c98e4fe05142153ffcb5bf302'
    'vi'
  end

  language 'zh' do
    sha256 'eb4a7f1a4d750d67479b69c0190ce72c11aa2d4d4a40d674cacf50f3f3224a65'
    'zh-CN'
  end

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_#{language}.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  gpg "#{url}.asc", key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  auto_updates true

  app 'TorBrowser.app'

  zap delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.tor browser.sfl*',
      trash:  [
                '~/Library/Application Support/TorBrowser-Data',
                '~/Library/Preferences/org.mozilla.tor browser.plist',
                '~/Library/Preferences/org.torproject.torbrowser.plist',
              ]
end
