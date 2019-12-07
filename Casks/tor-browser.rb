cask 'tor-browser' do
  version '9.0.2'

  language 'ar' do
    sha256 'aefbb85dc2ff91e7b6e35dba6ed83a46207486549c184dcc5b5c6d7c1c82eeed'
    'ar'
  end

  language 'ca' do
    sha256 '893f53fae8e9d282a86a7ab64c6c4bcc5cfd31eff3468eb6a6473b0d4dbb03ff'
    'ca'
  end

  language 'cs' do
    sha256 '9054662d5a1cabd0e1a2721428472cc4e58d23cc624263227389c440092bf278'
    'cs'
  end

  language 'da' do
    sha256 '5a10353517e431d8363039bdc20db911e7eea14510378c3591d9f87cb5f78f78'
    'da'
  end

  language 'de' do
    sha256 '4f1520fc6ac6d8b3b73859c468a57db616638edf0ffde86bb24649091cdb55e8'
    'de'
  end

  language 'el' do
    sha256 '76b6ee85f717fce193b73ad16561a3cb7a7b20646ba6181405ae3c0ba791be83'
    'el'
  end

  language 'en', default: true do
    sha256 'e58f56cf19eda130becfab478837ebc040349e0eecd217fc269d6e7aa7c954f6'
    'en-US'
  end

  language 'es-ar' do
    sha256 '95cad30ef7bfcbe7ee81fac64192d344f2ed296bdc8a7e2118b7da9e1d203ee6'
    'es-AR'
  end

  language 'es-es' do
    sha256 '27866ea5e36cacc0555ada55aa5a02d6f43e2ef758e45aa2b61733649c450323'
    'es-ES'
  end

  language 'fa' do
    sha256 'a19c5acc9d51363374a56bed5726a442a6c1a81ef9ab208ccb1a30824fa9008c'
    'fa'
  end

  language 'fr' do
    sha256 '40c8ab94d2143008df89fb3848f8b7700d0b860239fe0d6fb6a80035f7d7b91e'
    'fr'
  end

  language 'ga' do
    sha256 '3c0ae1332567b4a002c3bd1fb9185c1974fb1851672df27f06a4e7708c84ffb3'
    'ga-IE'
  end

  language 'he' do
    sha256 '74fb634d94d9c3bc474e52e74ed69be5fb500805abe7f2693708c1631d6ef09f'
    'he'
  end

  language 'hu' do
    sha256 '6efa5e00176a0a3f78b8047041d844aba17e90b59bcd8e0322feede3a06cd72d'
    'hu'
  end

  language 'id' do
    sha256 'c06a6c5e5e402266387e36b1dd4e96f4c1275d7fd6eab2fe11d964a260d8e0db'
    'id'
  end

  language 'is' do
    sha256 '950247656b7781efb6a251e00bc94a0091cf5026e6d2d4e0f5ce28e4c49ab95c'
    'is'
  end

  language 'it' do
    sha256 '8720a7af726d07349c3894bf42df379a9060a800618be91ba79ee36531f9c9c6'
    'it'
  end

  language 'ja' do
    sha256 '2eb1fa47529bcc2baa0ad6ae984dd62d5c208e4967865e1cfe91c23220a0ef49'
    'ja'
  end

  language 'ka' do
    sha256 '1b91fdbdf0205c5a0201cdb5f95c76c4c2b7894ef097fc0ad63efe777401e4b6'
    'ka'
  end

  language 'ko' do
    sha256 'ca2a2fe685f6e7be16f19b39e51b7e5e7bd54d366ec336f1996ec8084373ea08'
    'ko'
  end

  language 'mk' do
    sha256 'd3fabd744d0f00439dca6810dbb6d67047a4f8c2806ae45998eac0623d736402'
    'mk'
  end

  language 'nb' do
    sha256 'b014c71af3fd3ff2216ffa7883a690a117f2b35d6f3e3dadcee468e710b0faeb'
    'nb-NO'
  end

  language 'nl' do
    sha256 '23066930d667e90c67f73ed50103942e23afb0bce760d6547f235e0da963878b'
    'nl'
  end

  language 'pl' do
    sha256 '8676ecc8a9ed8659d45780742e75599381deb8426605ebc073eb08cc98f0a619'
    'pl'
  end

  language 'pt' do
    sha256 '9d5614c513c9e82611eb89e55392c6f45e407ce23bdd84cb1f6ad3a5ba96a292'
    'pt-BR'
  end

  language 'ro' do
    sha256 'ff5fc02440a57003ca2cb49a8bc6b55ebf370a84904ac03452aa97e960300439'
    'ro'
  end

  language 'ru' do
    sha256 'dfabf9684dc245ffbe1883f9a5a44336b21465d0ba97e93dfa2e7fffa4be4a15'
    'ru'
  end

  language 'sv' do
    sha256 'fb0bf957764c5db6b542873798bdc19a790dbd9e901ae354ebbd593cca5d3964'
    'sv-SE'
  end

  language 'tr' do
    sha256 '195420d215a6c4adedc0a72e0a2130c5068ece09ab979ff9a70c0fc2b10077a0'
    'tr'
  end

  language 'vi' do
    sha256 '0179f39c0219c93116cb65756970ca9d9f29af377242347cd9f493686f28921b'
    'vi'
  end

  language 'zh-cn' do
    sha256 '4e0b54eb883bcd33304c02e7cad92fc39b6bed2c66d87509a5159f7ce82eeabe'
    'zh-CN'
  end

  language 'zh-tw' do
    sha256 '6e2528ffc4e1eb2c92d52c3075348663a112f1546791a2b9e598b8a5c64aeca4'
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
