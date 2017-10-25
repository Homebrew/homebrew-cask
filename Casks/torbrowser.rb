cask 'torbrowser' do
  version '7.0.8'

  language 'ar' do
    sha256 'd377e6b1346a0b691e6d178f0766d6b29c843f120c9ef44836957f206dbefdcc'
    'ar'
  end

  language 'de' do
    sha256 '12983a9e28b5ca6efe4cb966d211a740ff1576cf27e09c91a8d2d65d1060fed4'
    'de'
  end

  language 'en', default: true do
    sha256 '11ad9163a5bfb82c5c3985b6c7c5f258b9677b4ae1ccfa3a5aee6dfc12e09d80'
    'en-US'
  end

  language 'es' do
    sha256 '508871d7b0667f192196fcc982b638ba371db67054cf4a6284c7abe857a745b0'
    'es-ES'
  end

  language 'fa' do
    sha256 '50f77c9641bc515d365f62f0b33ced8661b879f3844af1656947fcb8d3fa040c'
    'fa'
  end

  language 'fr' do
    sha256 'ec162f9fbf9f8e0801f33be43f595ba3c4a65e43d1bb2fc9edd0e54ab253cf66'
    'fr'
  end

  language 'it' do
    sha256 '1a3296c7e05d6e4ed0c52c5e4be72147f85664a0e05f9b690bb9b16477d3a49d'
    'it'
  end

  language 'ja' do
    sha256 'd88456d30ecb26ab73ab32c6d4a86487bf230a7da5b3807a7fad532edc9f6824'
    'ja'
  end

  language 'ko' do
    sha256 'd29d8959a182e7cde35abd72becdc8f91c575885848d844694d145724f4c08e3'
    'ko'
  end

  language 'nl' do
    sha256 'ea8bd84b85c858b0ce55ddf49da786121f235e86a301cb53908efa98a2d9836a'
    'nl'
  end

  language 'pl' do
    sha256 'ec201a210227e3302c559f538296d6946eef6b1eec1d3a184525fc73b8a65a70'
    'pl'
  end

  language 'pt' do
    sha256 '670feec0442900470e4409ab1251bf1162ae2c2f2c8be24e3bdce4575873db3f'
    'pt-BR'
  end

  language 'ru' do
    sha256 '84b5c5cffa5d00ef6c35d7ae82ae92ea9e2de641928cb3d8e24b283e71f72d71'
    'ru'
  end

  language 'tr' do
    sha256 'deef751d92db374f3cf6810850c54c36251c6fbf263c812eac00193bd0db51a9'
    'tr'
  end

  language 'vi' do
    sha256 '9ce2d13a868425e98266aee0bc7d3407acb0587dc0eee7d7219ef9854689c7cb'
    'vi'
  end

  language 'zh' do
    sha256 'bfe6a143b20dc17a8d55d18bd7d55757fc2976ca8bdd6a8fba73858d442fcfdb'
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
