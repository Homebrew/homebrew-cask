cask 'tor-browser' do
  version '8.5.1'

  language 'ar' do
    sha256 '8a78654504f6d7fbd25f8299f8b4f4d4e0b0bd85d1fc3f9ae7cc9e361d2f4976'
    'ar'
  end

  language 'ca' do
    sha256 '2c2d1b262ddca21c44a917f35929ab5e20d00cc544b02671ea8df205c9a5d51f'
    'ca'
  end

  language 'cs' do
    sha256 'a5771597a090bd94c76c672b5c3f960b5e1af0637d1808e122aadef7e1e4f893'
    'cs'
  end

  language 'da' do
    sha256 'fbd418b81033523fb92cb0dded0e966e5bbdfdbec8c0eef3b391fab9326c5435'
    'da'
  end

  language 'de' do
    sha256 '70e2adc334832415ef9162f7e8abacea5d7a1f73d96d9a74d9ceaf6dde089ddc'
    'de'
  end

  language 'el' do
    sha256 '1733048c5ed341b3e47c5e60518d167d714db0acb80715a4aae181b33906fc74'
    'el'
  end

  language 'en', default: true do
    sha256 '1e39adad795936ec8186e91278c5e7ce8ea3cfe6be54a6acbb70951c1a5ff01d'
    'en-US'
  end

  language 'es-ar' do
    sha256 '1acb90e9a56bdb1fdf5a0d59347521ce54ae4c64a65e3e18b90d1475ffca0ab0'
    'es-AR'
  end

  language 'es-es' do
    sha256 '3245e0aef080111e0db429f8000aa5902ad80b081dc7f416a249d8c3649fca43'
    'es-ES'
  end

  language 'fa' do
    sha256 'e000d4ac2698ef2ace5ad9310c8942f74467f95871c15d911768ee2d0e762d0c'
    'fa'
  end

  language 'fr' do
    sha256 '89f483221a4d031c7fa87d370130c74df4cf79a3ca3132ee2e2a28364cad3ceb'
    'fr'
  end

  language 'ga' do
    sha256 '1098b3218c8a795e5b0a140806962f6ae8c102ffd73cf3d634f27af62653b445'
    'ga-IE'
  end

  language 'he' do
    sha256 'f6f1e46aa9c4b70197e75e07697bf84c9bfb86a2dcec1157bf390fe29abb0434'
    'he'
  end

  language 'hu' do
    sha256 'c0f7a1abcd7cc772e3821a038322126af276be91cea2f615ab2deddb5fc5a4ab'
    'hu'
  end

  language 'id' do
    sha256 '7bf6fcbd17836f72509b7ffe4071fe6ac20e7663e4e43db535c034c2fe5d49e1'
    'id'
  end

  language 'is' do
    sha256 '26c2b7bdc5dd5068b9c99cec00c557ae6d2aae0ff29f68fcc40028fab49db981'
    'is'
  end

  language 'it' do
    sha256 '30d3443f0c9755c44a207c0fb13f5fa4802aca959be887c7fda036be8ec2117d'
    'it'
  end

  language 'ja' do
    sha256 '8434c71aa7d49070267f418a7a26534c02df98b3080bc71cc511bc7e64a0b604'
    'ja'
  end

  language 'ka' do
    sha256 'fd1eb1c49077bb3986bfbfd3d67dfba5e9497dfce0f9a7966b320d0ea4c7bf10'
    'ka'
  end

  language 'ko' do
    sha256 '34fa7178d729beefb43cbc03347a76ee5d7bbd330dc78fc4884ee25c89398221'
    'ko'
  end

  language 'nb' do
    sha256 'd28107bb3f69371d577f371987766332f5d9c52b7c740a55f9f457876f9cc750'
    'nb-NO'
  end

  language 'nl' do
    sha256 '9c81d41ff83c1cfb6763ee90c31eefb8cf5d8de08749242541e63fd44608b295'
    'nl'
  end

  language 'pl' do
    sha256 'acdf4cd390e6ee6ebd828af323a59c76144951fc10ef8c061b7a84182d8b794d'
    'pl'
  end

  language 'pt' do
    sha256 'bcf4c9482b8ca2d1227eee60dc4c19b69546c0a5c961175d82e0060ddd8535b6'
    'pt-BR'
  end

  language 'ru' do
    sha256 '0325d6b9228fe902254aeb7e8f053c06b14449c42e3ff5713a9fe50a0ab9173e'
    'ru'
  end

  language 'sv' do
    sha256 'c6f14ab2127c882f0a6a00164dfac44eb87d9fa955e607e6192ea3380b19c5e1'
    'sv-SE'
  end

  language 'tr' do
    sha256 'bb23d2cca21117e4c8fe459f33e6a3e2759d1c80df1aa1a63307176a8814e2bd'
    'tr'
  end

  language 'vi' do
    sha256 'eafcbd636b842bce761e2bec77793643f45aad700632719431105c2cdeb9d754'
    'vi'
  end

  language 'zh-cn' do
    sha256 'f5cb6b05250b06ee8c3a3e948fa1211b8633f93d1ca0b54ad26b5a86a4786d62'
    'zh-CN'
  end

  language 'zh-tw' do
    sha256 '56ccfb77878a114a93e3c58c51a04fb2b7c0bc912f7ef8d95fae68e64c2db325'
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
