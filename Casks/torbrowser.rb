cask 'torbrowser' do
  version '6.0.7'

  language 'ar' do
    sha256 '09b1f556a6c54bceb0aca909952dbec029897a5ef38013055280d18df27542fe'
    'ar'
  end

  language 'de' do
    sha256 '3714fa8c4be370f828e7ed4e90fb0c8c36d6ccab22f367c19d59c2222d0924d6'
    'de'
  end

  language 'en', default: true do
    sha256 '59e127188f4090efe45f31318a6117e8c59532f756c2324c0369538b988f5fbd'
    'en-US'
  end

  language 'es' do
    sha256 '051d62e202f8b22eef3207759653959de2dd67dbb3d922b46a329f690217abdf'
    'es-ES'
  end

  language 'fa' do
    sha256 '3b0f2c66c814ffe7cd41d67518b72324cb93b555d499f0db0e5f2f63c1361058'
    'fa'
  end

  language 'fr' do
    sha256 'fff4be04bb7cd06e2c6a68125a1f2cfa4be14d73d4e7c01500cb904d7a28f14c'
    'fr'
  end

  language 'it' do
    sha256 '25dad8ceb3a1be952a758251e4e88f0f1f0d4939494c19c158a23d02f2f7876e'
    'it'
  end

  language 'ja' do
    sha256 '0a56933ab02c78c3c81bb93a140592ab2f6aca0fd3caf76d1458b9b6c33df0c9'
    'ja'
  end

  language 'ko' do
    sha256 'b08d1ba8bbe233c239de5050f6d3a2530fc41e872fbcdeac5e35fe2e5e8e569b'
    'ko'
  end

  language 'nl' do
    sha256 '6a7beb4297bab2a2b332ae5c1fb4e02db75be4808d1e3fbc276e0d6009804d2d'
    'nl'
  end

  language 'pl' do
    sha256 '87d39df936a5f9ec485d879d7d1f7d03771211e7137f76bb23b8c361a9d43edb'
    'pl'
  end

  language 'pt' do
    sha256 '9241b550f8d36e7115fc461961bab5845a100311c4c74d913c3b3454e1089de1'
    'pt-PT'
  end

  language 'ru' do
    sha256 '7f7d2b61ca775daa02a9fe3fb59b871b0113fb49351b498a2e1fd725f950995b'
    'ru'
  end

  language 'tr' do
    sha256 '73365d34b2c1821fedc07f5cd2c1651ab9c88a0e845b83b99bb3e0356c938a4c'
    'tr'
  end

  language 'vi' do
    sha256 'c549d67d3a04a419068a230252b603ecb80017a7992142d5f57c203b4558e404'
    'vi'
  end

  language 'zh' do
    sha256 '59e127188f4090efe45f31318a6117e8c59532f756c2324c0369538b988f5fbd'
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
