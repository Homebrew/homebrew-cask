cask 'torbrowser' do
  version '7.0.10'

  language 'ar' do
    sha256 '122daf61a1bd9d1b576997457706531390c3f2a7275b0f43b01a0f9a920be9cc'
    'ar'
  end

  language 'de' do
    sha256 '9d04d34c8f18a5fd6721d66b5e29c4754c48fdf7038a08f6c924e389fed3aeb1'
    'de'
  end

  language 'en', default: true do
    sha256 '2de32de962d14ecb55f8008078875f3d0b0875dba4a140726714e67ce329fe9a'
    'en-US'
  end

  language 'es' do
    sha256 '3f8391bb3a205d248eaed2cde6dfe2165560f1486a0bd0cec56e70cf18b77375'
    'es-ES'
  end

  language 'fa' do
    sha256 '6ef9d4c94e324470d73537a3d7429408324a5d758b816d80b1133a1d801f0fd4'
    'fa'
  end

  language 'fr' do
    sha256 '73324be36b79b8f4ec1b13a7409d48d231d9c4eccd5bf278abaf8dd614de0613'
    'fr'
  end

  language 'it' do
    sha256 '63e6ed6d5cd401a044d886f11f847b275c25500d3353e34e99b7f0529fa07d70'
    'it'
  end

  language 'ja' do
    sha256 '7937dd062615af7d08365d48ff52f64218b256263b25ea470db7cdf1cbd56b4d'
    'ja'
  end

  language 'ko' do
    sha256 '33d32a55e8d0601aa8e9834a1caebad8933ed1a1dd9bcd52e802e441af0bef5c'
    'ko'
  end

  language 'nl' do
    sha256 '53f286469ed9b5d9ea47c71b3d08e3b9f1ce725980269d2311e498bf7e15ab9f'
    'nl'
  end

  language 'pl' do
    sha256 'e8d5284b1573a4af4f6f3980c0890c467647ed6118e450a770c145cde3c0d4ef'
    'pl'
  end

  language 'pt' do
    sha256 'e260d282a88338d32c4852895457a98ec4f39e8894f691bb936a27b9e8dd94fb'
    'pt-BR'
  end

  language 'ru' do
    sha256 '37fa8f26ef042baae40ac02213ef32987a1cdfdc18359d1b76e431bd91259807'
    'ru'
  end

  language 'tr' do
    sha256 'f97e77da3c287788a99f48f83fdebb4824cff745f1bc4683ccd8d9179f86d7ce'
    'tr'
  end

  language 'vi' do
    sha256 '9ad2435d32228e940b24e0fc0d88aa0e6d13e0ba4f1c02ce215b4bad5dc13588'
    'vi'
  end

  language 'zh' do
    sha256 'd17a795c3be74fc3261d8c7064301b2145133d3d8efe6084a2cddd57089e6d67'
    'zh-CN'
  end

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_#{language}.dmg"
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
