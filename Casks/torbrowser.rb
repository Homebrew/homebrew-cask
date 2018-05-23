cask 'torbrowser' do
  version '7.5.4'

  language 'ar' do
    sha256 '062cf091cb34a0bd6c8d95e82b38f3ca8dd3980127d4a73ce12915878f10be59'
    'ar'
  end

  language 'de' do
    sha256 'b94de2cb5af970b7bae3c61efc81a392eaea92a3a824fe46f52e956ac91af6c7'
    'de'
  end

  language 'en', default: true do
    sha256 '298cd494d144ae6ec30922e0b1800ecb5f7bff75ea654b9b32b38bec52d927a9'
    'en-US'
  end

  language 'es' do
    sha256 '4409e646893cbfc9f05d5a0c85a912c32ae87c6abc8e0b2b9dec09e50b35db68'
    'es-ES'
  end

  language 'fa' do
    sha256 'aa1569f2f090f0cae2608e8e0e72a16852ae09fd0f66679d348041820ebe3ce1'
    'fa'
  end

  language 'fr' do
    sha256 'e0d94bdd9c302f8af920462330d457aed9f4554b788227b6f37e011f91bcf6cc'
    'fr'
  end

  language 'it' do
    sha256 'f28aa6b07d6e1ced13ac356b3930645a20e4324b8b435b6d9b1ef43e14893a69'
    'it'
  end

  language 'ja' do
    sha256 '5ea6b09ad0aa5f5241ae4e3e209e15fc3445fd96f56e8cb61f107105123d7425'
    'ja'
  end

  language 'ko' do
    sha256 'd0285a3ee7704736e7cec33982b62dfeb7bc8cc196e91bb2b21172a220444939'
    'ko'
  end

  language 'nl' do
    sha256 '157f9f665d355a36491ce6134273fc24565f1eaf771e47bb6fa4f2b82928d2a7'
    'nl'
  end

  language 'pl' do
    sha256 '21e856c5327b66248ea25a8977bc247ed1d4b6fc660c2194aae755eb1468ea86'
    'pl'
  end

  language 'pt' do
    sha256 'f58009d34eb152329b84f0828d77f4e5a93e6fd73263bf83a2898a522b2482fc'
    'pt-BR'
  end

  language 'ru' do
    sha256 '9beeeba0de384e372d74a91ba55214555f03f0930f70d29825c1c94c3516ff3d'
    'ru'
  end

  language 'tr' do
    sha256 '03abb9b979d6d08f7cf3df6e3a767aaeb35103c9330bcd482b12d4e9f5124b76'
    'tr'
  end

  language 'vi' do
    sha256 '505702858977c336f50b4f3da7dddc54362bb2a6e0cc9f2abfa075f445c0d0d4'
    'vi'
  end

  language 'zh' do
    sha256 'b6d2b3bb5c95247e17919a7ee2e5030e8f526a88266b05aa9b90d4d9b1c2311c'
    'zh-CN'
  end

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_#{language}.dmg"
  appcast 'https://dist.torproject.org/torbrowser/',
          checkpoint: '821b5e99ab6c6d95bc1a226bcb63fe153787ff864c19f6b8a807259f5a5941c4'
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
