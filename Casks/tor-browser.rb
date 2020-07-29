cask 'tor-browser' do
  version '9.5'

  language 'ar' do
    sha256 '55044fac7b299033c14bb4b357c8c619464b7c2e4fc2f51d0b85a7a29c8c0858'
    'ar'
  end

  language 'ca' do
    sha256 'f6931398713eb5172b7f7f965966116072f9c98948ee98989484c93c8e81f122'
    'ca'
  end

  language 'cs' do
    sha256 '6e67ca3bc041c9129669cd212ea194c30b239c8d94049444ebe0a7f6970fa823'
    'cs'
  end

  language 'da' do
    sha256 '9049e59834dbdf759f68c2d2a009633ba6463f1781a16a053da52e2e501aacff'
    'da'
  end

  language 'de' do
    sha256 '9d156396ae6e1d89b19762bb21c3298ec74b51d91d46ddc85d91f2c218acee7c'
    'de'
  end

  language 'el' do
    sha256 'b69126e1db626e0a3f1953bd7810055266e7d08f39b2977d09c49dd150eb146b'
    'el'
  end

  language 'en', default: true do
    sha256 '108219dc1f26ba19a0c0670a6620518c9ea9e7aad3062bf1634e705348f3a09b'
    'en-US'
  end

  language 'es-AR' do
    sha256 '706c22c044419365b6c66805ff3ad25757d04ed3dba64811ccf35fda48ff8fe2'
    'es-AR'
  end

  language 'es-ES' do
    sha256 '374bc78f91bc05ac7c1b1596544c9e9f60e00828ca3594400a8329c343757e0c'
    'es-ES'
  end

  language 'fa' do
    sha256 '0315d5c4850a74b16add5d66668995c227ef1060932395f9674d27fbbf135535'
    'fa'
  end

  language 'fr' do
    sha256 '293c2702dc297e0410c03c8713b2791309e62c99c4a42c9d6d197a3c8b8f7b37'
    'fr'
  end

  language 'ga' do
    sha256 '7a2a812029d9f62746918a78a615a7e9298f6c6cdd61374b95cfc0c65c6134c9'
    'ga-IE'
  end

  language 'he' do
    sha256 '83facadcb4961f79a5d0f877c968023f85f037b84de08011954ab6e990f4c114'
    'he'
  end

  language 'hu' do
    sha256 'd32443a94b0825745bc85730b167f99c24ede04a361d87ebd4570948d2f41d70'
    'hu'
  end

  language 'id' do
    sha256 '1feac39d0cc771657599a5f08a10e220cff820d17c19283b6d3ca8a59ff8855d'
    'id'
  end

  language 'is' do
    sha256 'cb86ba5381dec1203ab5cb181131d24e6084821f5914dce1b4225d6d6036c838'
    'is'
  end

  language 'it' do
    sha256 'b51d00e996938320e869c240d59dc6ccf7f083b3cdd37e6502e96c7006bb8fbc'
    'it'
  end

  language 'ja' do
    sha256 '2ec4b502f4789c3ebcd9f483f8c9dd70bc826ae59c5b986e338276be41f817f4'
    'ja'
  end

  language 'ka' do
    sha256 'f94887909b6d1256eddab4bd9a0b152265b8f3bc71c5f9dc249ab7c658cd9f2e'
    'ka'
  end

  language 'ko' do
    sha256 '249bd334038897c1aeeb9da58619754c29910d7ed11fcaa7180a8eca7a90bf03'
    'ko'
  end

  language 'mk' do
    sha256 'e1f80bd96bc52f694764b4dcd222e2808ed563039d80e90f8484abee5528900b'
    'mk'
  end

  language 'nb' do
    sha256 '8b1fdb89a209c99bb6f9e3cb79457b38ee86292f3fbc2d3c319bc13fa10cfe74'
    'nb-NO'
  end

  language 'nl' do
    sha256 '18c61e01e7fc2ce7940586b2a758747dc9592aa7a06455e456e12979f2d733c8'
    'nl'
  end

  language 'pl' do
    sha256 'ae2885f6e6a404a83323760191cbc23d584838487d5dfb8dea10a152495f0889'
    'pl'
  end

  language 'pt' do
    sha256 'c2c3038ed2a169ec98f423e434e47911138b2bc583be080c0eb39dccee6ca6e2'
    'pt-BR'
  end

  language 'ro' do
    sha256 '6fe80684dfafa39de3e5ddbc6498557779f87f6c8002ba97e7d8c664511cd5dc'
    'ro'
  end

  language 'ru' do
    sha256 '6f8ff2e97e65ff7374453e5c266d8973602359bd97393a33a02c51691ba9c4ca'
    'ru'
  end

  language 'sv' do
    sha256 'fe809ca9840daf86683c50005025fff285612f2ef7f481949e87f03832996914'
    'sv-SE'
  end

  language 'tr' do
    sha256 'fe212bf80d4fca8ef9762b557dfe4c24f7c33702c7f6428da516b1d55a7a260e'
    'tr'
  end

  language 'vi' do
    sha256 '0e05055722234c69ccd2cf26b5c35d9fa0b84de5901e80ec3d663d97c408b5a0'
    'vi'
  end

  language 'zh-CN' do
    sha256 '4f32c891333a76ff4df56891d16fbcce2dd0fc8d5f020e6c1babdaf107dc962d'
    'zh-CN'
  end

  language 'zh-TW' do
    sha256 '54118f1b8f8d00667428c73419b1c44b77fd3e6d77ed307544ab9f011d627cb8'
    'zh-TW'
  end

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_#{language}.dmg"
  appcast 'https://www.torproject.org/download/'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/'

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
