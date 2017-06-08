cask 'torbrowser' do
  version '7.0'

  language 'ar' do
    sha256 '43429d1d9c9a7d3a8a3dfcf6077b9a04fff18c7adc38e28b1c26b01a7c026ec6'
    'ar'
  end

  language 'de' do
    sha256 '7a190d1568f75f87e744940448c4574311ef0b14b3e0246dff67939133dc31ce'
    'de'
  end

  language 'en', default: true do
    sha256 '57f4fb26ed4a91214483e4c0b9afe85377572ae4b31b90718c98d953b8a2780b'
    'en-US'
  end

  language 'es' do
    sha256 '70f6dfabf960a65c422a126212c178dfc845da861c2dedef4117de517a7ab594'
    'es-ES'
  end

  language 'fa' do
    sha256 'b8fd8dae38232edf396b48518fd192da281507b88da41293eb4fd852b5159ec0'
    'fa'
  end

  language 'fr' do
    sha256 '51068977f1244121bc58fb2338b9d1ac19974b05ac2d3314acdbfc7af7e70b13'
    'fr'
  end

  language 'it' do
    sha256 '89ce9a5079a72eae182c9df8feb7f97b7cc919eb57e68818cdd0e65e0510d4f3'
    'it'
  end

  language 'ja' do
    sha256 '59b938482c67ca49e95826d9d56eaa834a3277b882aeb4c9bc34dc1e69caf722'
    'ja'
  end

  language 'ko' do
    sha256 '6a411ad8592adad963a099f8e8ba8308b376b648bc751e191c797f3fe889229a'
    'ko'
  end

  language 'nl' do
    sha256 '0e06b2f946c24e1643fe18ef43844272542ed8321f244693dd5ff272490e7055'
    'nl'
  end

  language 'pl' do
    sha256 'e5bbf98e8ccee8f23558010a83a5d76d2ff9dfbd2b71df4ae878cf7ed5f9115e'
    'pl'
  end

  language 'pt' do
    sha256 '590c191cb3f32c5b9117c72e5e55e7fd5410a498a80365ddf73c2ac249b00f40'
    'pt-BR'
  end

  language 'ru' do
    sha256 '6f60985ad6bb3e96b060352ef759a0139bb391f887adcc8256666ad5fe110223'
    'ru'
  end

  language 'tr' do
    sha256 'a49da816dbaa4142d8a5f7c9dbfac77c59b85f65a22e2016d22d781ecddde99d'
    'tr'
  end

  language 'vi' do
    sha256 '00bf4e38780d0c3d3fc30c5f9040c9a49e74486b6e6b0472c89736b75a39200e'
    'vi'
  end

  language 'zh' do
    sha256 'b65462c6f3acb244774762c9f1b05f735dc902236a09c4f52382e884682353c3'
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
