cask 'tor-browser' do
  version '8.0.7'

  language 'ar' do
    sha256 'ca6c610747be2620aa1dfba4f2e87c16f26af2d39446d7d1582ac0e072dfb511'
    'ar'
  end

  language 'ca' do
    sha256 '19b5225abef55c3ffe9ffb55d20ef193f941ec19386c45567fb38913a0a7cff5'
    'ca'
  end

  language 'da' do
    sha256 '285d191bbf1cde28145e340c5c5f85de5c33221a2d8386a6bfab17f32e396cb4'
    'da'
  end

  language 'de' do
    sha256 '1f3457098851086ef5c50a1ad3c008b78d894917912374b7b9b9678c67c04ec5'
    'de'
  end

  language 'en', default: true do
    sha256 '34d71b1920faea9e88f1cf01cac39b311d8deeb14a699fdf61bb445f2f5ce2e0'
    'en-US'
  end

  language 'es' do
    sha256 'acb3a1a6d4765a68fddadd6b4079491166926e925098f5b1e9f3c7d7d0998d3a'
    'es-ES'
  end

  language 'fa' do
    sha256 '61baadb2e1592c61c0a196a89c4e3c7ecb62497cf6d6256f074bf7f901023908'
    'fa'
  end

  language 'fr' do
    sha256 '1b14761e5c9ee87127f4e111b4eefc8c14b768f25d7a103e20ac82b930d49bf5'
    'fr'
  end

  language 'ga' do
    sha256 'b66aa3548b88bd45f9689adcd49710bf1a40d1abe880161978f2d11026de9399'
    'ga-IE'
  end

  language 'he' do
    sha256 '356dd97604f7f17de64908d7f23ec62a10a6f84987173ed7bbf7f8e7c7f353a6'
    'he'
  end

  language 'id' do
    sha256 '68c8be8d45b7029f84d9e57cc524791125cd9ebc2f77e1d4fe7c42c01a3811e3'
    'id'
  end

  language 'is' do
    sha256 'df3017d2603214a70f535d79407f5d51d27a1b639e67f23aca7a2526fc8a0de2'
    'is'
  end

  language 'it' do
    sha256 'd5a42b04d24e27fd2452d406d734a22848b58c69fb6b16ea33ece024dc7ca2e0'
    'it'
  end

  language 'ja' do
    sha256 '88e0c025f6833f22b527540ce95b2079a09509d157168084262558f743337be0'
    'ja'
  end

  language 'ko' do
    sha256 '3efaee735f91f90092b330dc059a65837d6ef8e27b05b1bd33f9093f0f94da4a'
    'ko'
  end

  language 'nb' do
    sha256 '4dbbda12e0448e524b0d2da3322a21b2e2241cb6f27ad3c2c2e3ded831ec60b7'
    'nb-NO'
  end

  language 'nl' do
    sha256 '1e3d3e3e3966ceb855051ae9243afa9d4e2fa68140c091d4abd058d9771d9fc5'
    'nl'
  end

  language 'pl' do
    sha256 'ad72524bcf9134232e8c7d31ca65803fca11373c7221727fff53feac2fb2da1a'
    'pl'
  end

  language 'pt' do
    sha256 '8edb4b0017332d717710526b40dbb672bcaff549402d0cafc1ad201b53b2076b'
    'pt-BR'
  end

  language 'ru' do
    sha256 '9c4b7507653c4fcba9b5f57d3f1551af83a59317e7b74671f9a4915465579037'
    'ru'
  end

  language 'sv' do
    sha256 'cc9b4e9902c5284d4fd316040604f93fc1fd02715fed1c4b8cb60835d6ae24ef'
    'sv-SE'
  end

  language 'tr' do
    sha256 'c8bfc27e5215170d9b55b281f9787c13cc16ee2f85bebbfbaca339f8f5c44b0c'
    'tr'
  end

  language 'vi' do
    sha256 '9bbf1fec190275e193e1d20664dfe253c2d332ff99074e82ffdd180ca9da3e7f'
    'vi'
  end

  language 'zh-cn' do
    sha256 '4b52354180b3c224479ff1af47cbebf35afde733d84050f890a36fb94233f121'
    'zh-CN'
  end

  language 'zh-tw' do
    sha256 'aa7e2471add3ebbf9da1e47a82e04c27fce36255f9490ac10c1235bc6623e295'
    'zh-TW'
  end

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_#{language}.dmg"
  appcast 'https://dist.torproject.org/torbrowser/'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'

  auto_updates true
  conflicts_with cask: 'tor-browser-alpha'

  app 'Tor Browser.app'

  zap trash: [
               '~/Library/Application Support/TorBrowser-Data',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.tor browser.sfl*',
               '~/Library/Preferences/org.mozilla.tor browser.plist',
               '~/Library/Preferences/org.torproject.torbrowser.plist',
               '~/Library/SavedApplicationState/org.torproject.torbrowser.savedState',
             ]
end
