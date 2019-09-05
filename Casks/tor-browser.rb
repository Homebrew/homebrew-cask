cask 'tor-browser' do
  version '8.5.5'

  language 'ar' do
    sha256 '161a9b9d21c4f986a7090859b3d7bbd2559b194c3fc34b765b16d24153a8efda'
    'ar'
  end

  language 'ca' do
    sha256 '879b039674c25cd62c4209d5065d47cfb6237ca48e1d96a4f04ab0c7467c0e9d'
    'ca'
  end

  language 'cs' do
    sha256 'c4ac74c27ac10df051c2ce7d344be6d25dcc282c03f9485b3cf8dbe4c9783d76'
    'cs'
  end

  language 'da' do
    sha256 '734add1c7e4cc110de55a06508b6de7c8116544e3444aea89d251f40faeb173c'
    'da'
  end

  language 'de' do
    sha256 '90f745cf28ce75159ae09ebb4064aff1e9434d161892db9db1ca685c800b5f25'
    'de'
  end

  language 'el' do
    sha256 '82eb467440debe257c465ab1474fc2fbba7bffe0e3659ca62a7ace074b02af57'
    'el'
  end

  language 'en', default: true do
    sha256 '9c1b7840bd251a4c52f0c919991e57cafb9178c55e11fa49f83ffacce3c20511'
    'en-US'
  end

  language 'es-ar' do
    sha256 'f7d917f34206b6bb348063e389d60b8ad404edb7aaeac2d524674f26b6588dd9'
    'es-AR'
  end

  language 'es-es' do
    sha256 'd3d2b37fc43ec9ae1c4f34e65c35402caa170b7ae02ff40311aaa55b82766918'
    'es-ES'
  end

  language 'fa' do
    sha256 'edd8fda04ed1fd721e284be367f01a507cf93efd13625684fc2664fc70f4d966'
    'fa'
  end

  language 'fr' do
    sha256 '6d1ce9274eaddb9fea3d655b79f77e7a1047ab5303f767d119c575f3c567f915'
    'fr'
  end

  language 'ga' do
    sha256 '79351b50846ad8e1dd2b5a17ec48e275a9d903e79266ca4fe8d6e2a98624ac09'
    'ga-IE'
  end

  language 'he' do
    sha256 '8f97379f3fae2719bedcc9f77c546cad5f2c53510f309fb9013a71ba13435db7'
    'he'
  end

  language 'hu' do
    sha256 'c752e2a30f313709f0e32101cbe31fbda1a77d97b1c7936e13f28d50752a427f'
    'hu'
  end

  language 'id' do
    sha256 'b11203a05530c28425f751baa2c204e7e85b520a213f3611143a3a059ecbb80c'
    'id'
  end

  language 'is' do
    sha256 '73198252092c302038613c96b172410132118a344267cbaad055d45499e3490c'
    'is'
  end

  language 'it' do
    sha256 '0f5edec15d4947069f210a6e0f72427d79b9291042e490fe0ad3d94afb82943d'
    'it'
  end

  language 'ja' do
    sha256 '4eafd4904fdc6fb0e5d8214de526157e49621f8c8b9129b61d376a6b434203a5'
    'ja'
  end

  language 'ka' do
    sha256 '711c63b01ced658ab546b8937dd86eef168600449b56006b8b3e931b7674e165'
    'ka'
  end

  language 'ko' do
    sha256 '5aedd9a67d24d48238802d7e7b22b52e35f6594b2f7ff6e0fb5c6d7a333517e7'
    'ko'
  end

  language 'nb' do
    sha256 '18f4e74893d740c3d6b5ec5b2493275b8ba862b32c8c3c7d55be92cbbd0de164'
    'nb-NO'
  end

  language 'nl' do
    sha256 '9de66fbd3ced6a3a7aa9495c48f1d5c9a68ab0c75e2193cd6579949b904593cc'
    'nl'
  end

  language 'pl' do
    sha256 '13d6e1158164bcf2bef501e4fe0c92457f9ea22860512187050a46902646c3dd'
    'pl'
  end

  language 'pt' do
    sha256 '1020c404e2ea1d800e1e681bbde454f205cb66ae221a7fa220be694bd1c457d7'
    'pt-BR'
  end

  language 'ru' do
    sha256 '7f7c71ce4ad9b13b89e7166ff15f127c136e8283bb9cce73164696726e24ea83'
    'ru'
  end

  language 'sv' do
    sha256 '35bb26aab2d9511cf77e1ae978ab1466e86cd8d3d977b1db01c58f99846dfe98'
    'sv-SE'
  end

  language 'tr' do
    sha256 'e35a177d27b37354a2bfe54cf1b640d55ffbfb105a05120972bd98a651c9cdfc'
    'tr'
  end

  language 'vi' do
    sha256 '10c88395d166a00e4a81beec68561700b97c8ee3d0383598fc3271c0128948e2'
    'vi'
  end

  language 'zh-cn' do
    sha256 '7c50ba64bec4b78bae6e78aacd5328bc2059a8f23e211c9cb60dd6d345964e44'
    'zh-CN'
  end

  language 'zh-tw' do
    sha256 '7280f8c17f3f3f092feab771d428c4c6f0dfef95a4457f1cac836502b15e006b'
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
