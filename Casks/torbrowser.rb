cask 'torbrowser' do
  version '7.0.4'

  language 'ar' do
    sha256 '29cc23fa342155c7f8b13e5a544b2dd67939c6025d65b2ae68d1b6e6b000c501'
    'ar'
  end

  language 'de' do
    sha256 '71a85cabdef2da8ffbb8dff5820e323096acdda6dececd16055d7daa395fc160'
    'de'
  end

  language 'en', default: true do
    sha256 '0a227d179cdd1096c877f9836097eb38ed554fbae6657753a72690a183e2766d'
    'en-US'
  end

  language 'es' do
    sha256 '69f00ba14b042124591dd71680b262a66ec41a93cb9ddf3bf5dc8a217951a62b'
    'es-ES'
  end

  language 'fa' do
    sha256 'd77c01a7bef3615ed8bd86f934290002ace7e01798e9def0119c24702ecc89b1'
    'fa'
  end

  language 'fr' do
    sha256 'f8dd193f1f7d62d07964a4ee78b5ed5ace93d1b4d43d9f6d5a5041e022de0e83'
    'fr'
  end

  language 'it' do
    sha256 '042b8bf4c01e062ec63d578e96e00a2f25aeb070c9189f18b5f9a65833a0ffb4'
    'it'
  end

  language 'ja' do
    sha256 '6221a1301707a26babe9a924ab7a1b41deccab339bb3e7a7f55bdc8e83eef5cd'
    'ja'
  end

  language 'ko' do
    sha256 '80d7b66a3fa680eea4c0ef930bf81b0baafd1445ddbc135f337df927d5537f73'
    'ko'
  end

  language 'nl' do
    sha256 '04c23af2be12c48db8e264ca431a86957f8679cfdd886c6f22aaae1474df122d'
    'nl'
  end

  language 'pl' do
    sha256 '7db9f5212c34f2eb1b28efaca717f6e4817247dfa4a1251316a46fd00af7bc65'
    'pl'
  end

  language 'pt' do
    sha256 'de1ce6dec1b53268fb552607ef9784433403d1b6102f176075e14b2ba35e937c'
    'pt-BR'
  end

  language 'ru' do
    sha256 'f8b5e98def0fb22c3efe94642fd3b0cd72dd4bd92e349e9d57cd642caf784a11'
    'ru'
  end

  language 'tr' do
    sha256 'b66b149a3f305d5d5b8abfb859512a61f85eabdeb77545fbc3a9db515bb49c9c'
    'tr'
  end

  language 'vi' do
    sha256 '0d3764a33344d2e901c66d8d92679cb0bf6520087602df39962e34e0d611c83a'
    'vi'
  end

  language 'zh' do
    sha256 '3926f60959b89bd99aa7e39e17988e5671b95921751e245c0c78a0c8c7296547'
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
