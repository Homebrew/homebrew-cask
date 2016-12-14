cask 'torbrowser' do
  version '6.0.8'

  language 'ar' do
    sha256 'ee29a4c58acf321783b208484f22980fb10380b6f07c047202c5ebd69fea1f21'
    'ar'
  end

  language 'de' do
    sha256 '01faf79b558fb45674d9bd37e4f0d5a19fb53d8b28910c0d03de797235f80249'
    'de'
  end

  language 'en', default: true do
    sha256 'da7600235282580b1079ee4e4987c26f6386dc473013229a7de7e45fd66dc366'
    'en-US'
  end

  language 'es' do
    sha256 'afea21e1e9a9d0beb1f03cf4c962997387aa17fd965241134b939b1ce62a90d4'
    'es-ES'
  end

  language 'fa' do
    sha256 '8d75032e7e1411b528ef17a81ead0f2abfcfe886335c764114b4526bda92d70e'
    'fa'
  end

  language 'fr' do
    sha256 '74da80edaddcee1670913490abdf745ec9292aa9d0e17519255462738388a89e'
    'fr'
  end

  language 'it' do
    sha256 '2666bc35a020756438bc684b08e86cb5d039ad9fa9ac1e21ee1f91fc48f5954f'
    'it'
  end

  language 'ja' do
    sha256 '5c557188431c54d602ea0939517d770a27d083968d307b730f327e2ce913094d'
    'ja'
  end

  language 'ko' do
    sha256 '01284d3f1fe378907be2bef6e2a3300154f31726e939009e1de3f085f1f436e5'
    'ko'
  end

  language 'nl' do
    sha256 '6c6c0be8311139943266c4a4a8fbc9375fa854791573938f4f4c0295de66f1c3'
    'nl'
  end

  language 'pl' do
    sha256 'a140de1288b0c1aa2a192b1d0dd4a0fe032b9a466f8bb4d89825161696aa4957'
    'pl'
  end

  language 'pt' do
    sha256 '908a3d26e7c6c3fa95137f1fbd366cbccc558afbfb4de20459ff77d4b78c6f62'
    'pt-PT'
  end

  language 'ru' do
    sha256 '3c4c956e062b1e854b3543c5dd688dbbc0c41fe93daeb29d0b6719c4dcd3f0d6'
    'ru'
  end

  language 'tr' do
    sha256 'fa98098df97f6fe58e8d2d76e2d560cfee8c0a3edb12cd3e43350d21d54e6366'
    'tr'
  end

  language 'vi' do
    sha256 '00fa655ba4daad3f75dd5079edee3a2474cdb71060690a9a9d897a8d01df6cef'
    'vi'
  end

  language 'zh' do
    sha256 'da7600235282580b1079ee4e4987c26f6386dc473013229a7de7e45fd66dc366'
    'zh-CN'
  end

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_#{language}.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  gpg "#{url}.asc", key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.tor browser.sfl',
                '~/Library/Application Support/TorBrowser-Data',
                '~/Library/Preferences/org.mozilla.tor browser.plist',
              ]
end
