cask 'torbrowser' do
  version '7.0.5'

  language 'ar' do
    sha256 'f7fe5b8996e223cf781b5df3736a6941a9fe673fb1e2de7dfe11aa6b98ad98a7'
    'ar'
  end

  language 'de' do
    sha256 '09eea8e7aa1dd25a3330a2fdcd233882ddbb7503ee34526d409c054661f6226a'
    'de'
  end

  language 'en', default: true do
    sha256 'a908263d0d20f88570e73e5a4dbc37b08b17bcd3db32572b34831ef8ad6a7758'
    'en-US'
  end

  language 'es' do
    sha256 'bf8168e84025da45eda1a2e427fe9c1dc06b1c54ba6f0e2660869a6b7d4d9634'
    'es-ES'
  end

  language 'fa' do
    sha256 'd4eafbf9c0fdf9cd05094ef41978429634abd8576a1149de5d00a04597c82a38'
    'fa'
  end

  language 'fr' do
    sha256 'cfe41c8f5abc8be3e68f010c05dd00bb51ee785c4e3bfadd5b944c3c74422a15'
    'fr'
  end

  language 'it' do
    sha256 '30037e3fed9d0da52ba4443adee2ad0f1642d6f64b82d294411da939ededb7b8'
    'it'
  end

  language 'ja' do
    sha256 'adabfd0b1cf962affc0aa2ac772928a0d4c66239a618a749a5baca2352c1779f'
    'ja'
  end

  language 'ko' do
    sha256 '49a3891cee8dadb7b3f66d4676d17614c54196d31357de1e93f17b93645dcea6'
    'ko'
  end

  language 'nl' do
    sha256 'd771ca63de564bb9761d91a2012bfab603b6547627cd8924c796acbe0c49a0bf'
    'nl'
  end

  language 'pl' do
    sha256 'bc384dbe501ce3d2c556b55adac84d2f028a202399ee2975913bc6c0b4f5f6bd'
    'pl'
  end

  language 'pt' do
    sha256 '4f72d08b2f8318f1ef9231e2a7e78bd6ce29d6d7629796954876a8a772ef7a19'
    'pt-BR'
  end

  language 'ru' do
    sha256 'bc9843b9de0a887249c7dd79265e4e7c61ab785b70ebb95401f497aadb24b16d'
    'ru'
  end

  language 'tr' do
    sha256 '87099c78bef51477c4cb4b191374158473d70ca0ff8a93ac9242232079d38ade'
    'tr'
  end

  language 'vi' do
    sha256 'e9e59d5fbe53100d58b0f2feb5dd2b5e3ad43c42ffe5d2893a799df87881ff84'
    'vi'
  end

  language 'zh' do
    sha256 'a51b48370ac4f968887174e8cf663ce9ed785094f6623b9f2d266b371d9ce552'
    'zh-CN'
  end

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_#{language}.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  gpg "#{url}.asc", key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  auto_updates true

  app 'TorBrowser.app'

  zap delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.tor browser.sfl',
      trash:  [
                '~/Library/Application Support/TorBrowser-Data',
                '~/Library/Preferences/org.mozilla.tor browser.plist',
                '~/Library/Preferences/org.torproject.torbrowser.plist',
              ]
end
