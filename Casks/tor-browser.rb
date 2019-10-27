cask 'tor-browser' do
  version '9.0'

  language 'ar' do
    sha256 'e2585564cea1b937e017fec23a28c3533afb788e537444e52a862ce7041442ef'
    'ar'
  end

  language 'ca' do
    sha256 'bad82bd62e12ebe98e051f99d227e9520b663ea434e4e9f9062f10508f857ce3'
    'ca'
  end

  language 'cs' do
    sha256 'd2f8b8a8fa1beead349c6708a7fa36b7ca1c02365cf7165ed54027251c6a1933'
    'cs'
  end

  language 'da' do
    sha256 '439856e4039206adacb261256b6092cb3cd1744b740c8dbddbfe7e8a5a67584a'
    'da'
  end

  language 'de' do
    sha256 'd91efb321da636231ba62f327831bb9577ef8aab93ddc688717a84f14e900136'
    'de'
  end

  language 'el' do
    sha256 '2f47ef90216dfaea5447ddbdea401e9209dd3a04f56fbbff230371e994188dd1'
    'el'
  end

  language 'en', default: true do
    sha256 'e26a23f12bbc842c6cc257d784f3618043ef2b502bc30f70939b10299b6a3b9d'
    'en-US'
  end

  language 'es-ar' do
    sha256 'b0a19c6a0d23d9b51334d2e5595273216ce83e245eeaf5c5f996205c7902957f'
    'es-AR'
  end

  language 'es-es' do
    sha256 '93c0815be8a6e77160781d8b19fffd097bab513cac9b5c03b14b717f41a25125'
    'es-ES'
  end

  language 'fa' do
    sha256 '463cc0b3b187092f292f6521b2324dd662ec3452f94f1f949449457f7ddbc1ce'
    'fa'
  end

  language 'fr' do
    sha256 '6203039ac7b4ae74c93b583dd0d8f359ad0a699fc2b2375fe4edd2a777f9e9f7'
    'fr'
  end

  language 'ga' do
    sha256 'f931338801a56fc0b7d5ea1ba045900fa5b297d4022dbb8df409a26e9aa8c579'
    'ga-IE'
  end

  language 'he' do
    sha256 '015087e366e9af50738048e7e8636292c135091350b3889d4e222db4f75328e3'
    'he'
  end

  language 'hu' do
    sha256 'bd355373d4893c78cb200af41116c63a726b9318349335b281bb07fd2f4c7868'
    'hu'
  end

  language 'id' do
    sha256 '5a5d658cee95f982941f58746a929e1b7c0a9582730da0db84929a5469f47cdf'
    'id'
  end

  language 'is' do
    sha256 'c78871541c4eb4434cebd6bdfdd835d53bd7afebae896bf15be809d24eded854'
    'is'
  end

  language 'it' do
    sha256 'f9dde6e82b9307e6de91a1a09cb8556bf72fc1490c0ae3571891cb9c35e59bb1'
    'it'
  end

  language 'ja' do
    sha256 '47f4162fbb989f23c41ac8b6d08c177940b5e7b861394bdae4ef56ba231c9b63'
    'ja'
  end

  language 'ka' do
    sha256 '977b0b2fe70292d300e877d07423ae47caee392611e37ca51480085ea1242971'
    'ka'
  end

  language 'ko' do
    sha256 '6008f1cabb61c306867115798036b3e6683c35bd3c24b43b55790ccc2a27b787'
    'ko'
  end

  language 'mk' do
    sha256 'b526032f633c50d7ac5ac2eac297bff488b2950368b3def73b4c9d118ab90b62'
    'mk'
  end

  language 'nb' do
    sha256 'fd188c715d92602b04f06652a6152a1787e002c4373614735365744f9913498e'
    'nb-NO'
  end

  language 'nl' do
    sha256 'c6dca162945d14bbf8a518b6bb60b7f4a5c96dc222c4c4da7d818cd70127b586'
    'nl'
  end

  language 'pl' do
    sha256 '36c483b2d6c7b3ffca3ef1b900b4311961fd066a1a1f1fb25c1398c76b6c5dc4'
    'pl'
  end

  language 'pt' do
    sha256 'cae2f2669d09964d17dbf5d979bdc359dc0cb9ad06c80beb4666a251bb6c68d7'
    'pt-BR'
  end

  language 'ro' do
    sha256 'fed34ef80b1bb2a7af1c8ab727653bd7f6111a43d7dc52fa6af7a8b9ee5e8fbe'
    'ro'
  end

  language 'ru' do
    sha256 '695ecdcda99781e0f98c04ee420e07aebbbe02b58cebb4b4b03cda495e283329'
    'ru'
  end

  language 'sv' do
    sha256 'f17c1fd6db01acc48e22959e59094c35c76048625e065ff6097973163fc817d2'
    'sv-SE'
  end

  language 'tr' do
    sha256 '3d0576d6d7f4453b589880c8b847aae2fa8b8d0b553faaf2d4c09f56eb325ea0'
    'tr'
  end

  language 'vi' do
    sha256 'fc86c5fb9e65085767f4c3342ab8713c68a802b5d6602fb514c9318b35f38d69'
    'vi'
  end

  language 'zh-cn' do
    sha256 '7c92acfaf4fd4b3cea037882faff6b8e14c3f61f88913d38c4664058349eb8e5'
    'zh-CN'
  end

  language 'zh-tw' do
    sha256 '7ed6142b9dff77d265793f265d447e80a8f23f5f7344033c81cc7245105ca2b9'
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
