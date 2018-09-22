cask 'tor-browser' do
  version '8.0.1'

  language 'ar' do
    sha256 'c92583e63055a37dc28a328bd5640914041b3a5fa0e676a9d63f9cc32e452040'
    'ar'
  end

  language 'ca' do
    sha256 'b2f389462ce7f74c970f76437be6a32a19f092ea11e04bd2482ac7fd06668394'
    'ca'
  end

  language 'da' do
    sha256 '599b65f7bbffa8471e0aafe34afe250345a8d6235fbeaa86acea268d9a78f681'
    'da'
  end

  language 'de' do
    sha256 'f46c8b8c0429b4be772a49aef431773efb1adf526acae3776db79064601db09a'
    'de'
  end

  language 'en', default: true do
    sha256 'fb1be2a0f850a65bae38747c3abbf9061742c5d7799e1693405078aaf38d2b08'
    'en-US'
  end

  language 'es' do
    sha256 '6f92beb6a3dc57c48340b77ccbcb3e242f9bbee5b1480a32bdb204efc69f508f'
    'es-ES'
  end

  language 'fa' do
    sha256 '791811e974bba7e0547cf85bc308243ef62be57294cc18f649e4008af49e44ae'
    'fa'
  end

  language 'fr' do
    sha256 '0e247358af856d7bb489605c8e2c32cc52e5f1f48d95dd5acb0e23c03575712c'
    'fr'
  end

  language 'ga' do
    sha256 '7ce2010c80292d3ca9ba4709cd2b5b26fe49fa1072140a2219c47e05a4253466'
    'ga-IE'
  end

  language 'he' do
    sha256 '5f6142937f9a27dcc224250bd1d4fc5f6f81d0da5fabe6f1a06365cdeb347a18'
    'he'
  end

  language 'id' do
    sha256 '925089d3061e9154ad9421829afcd222aa98c11c524d2c0115745fbaa16acaf6'
    'id'
  end

  language 'is' do
    sha256 '662d4ff4fd2ae08746097e8fa115a7147de90f6ea315e506205bec22b10c5994'
    'is'
  end

  language 'it' do
    sha256 '76df25c3956ebadd7f5352368e1d161b5689ea6160ef79190afb62db8d985342'
    'it'
  end

  language 'ja' do
    sha256 'cd8a146fc5ee6b77f53772e7d9b34cada65c8e7b6ca1218d71c56c704da256b4'
    'ja'
  end

  language 'ko' do
    sha256 '5f83391e251584c3d7fc97030a872fb34415b07f4aac55606b378a9c3ed288e5'
    'ko'
  end

  language 'nb' do
    sha256 '80a34c3a72b59aaab0588f9f9e5a0fbd831ca72e25918dd0c90cc6f40cf26836'
    'nb-NO'
  end

  language 'nl' do
    sha256 '960d233d4e4e736b3d9e709fca4dd47153a96be5e91685e8dbddcccadd90ffa2'
    'nl'
  end

  language 'pl' do
    sha256 '9d0e3e02cea9e530046b966f433102d1abd949abf015d6288e69a134afba26eb'
    'pl'
  end

  language 'pt' do
    sha256 '2cb98e7eb72f0b0156b8930cef7cb0b6800e1407aabc1be62634eeec07d0900a'
    'pt-BR'
  end

  language 'ru' do
    sha256 '507f5a1cbd4aed29999e8649b9424d9f634bcdaaa9e61fbe94ee00b6de1831e5'
    'ru'
  end

  language 'sv' do
    sha256 '083522a79c5eceba71fca2519308495cc429422ed0f9ccaf5618af9e6cd89276'
    'sv-SE'
  end

  language 'tr' do
    sha256 'fc395b9e9a3e5cabdc09b0bea2d997d8a111c3d207a284553860142647e86b56'
    'tr'
  end

  language 'vi' do
    sha256 '9e3d9ffb8263aab1495a59d6325f7562bcaefab26539b4ac7199bfa495c1833f'
    'vi'
  end

  language 'zh-cn' do
    sha256 '9404b002e693892555df6daacb6ecb52d22984847f2994549097457798b34efb'
    'zh-CN'
  end

  language 'zh-tw' do
    sha256 '71ad8644aa88d795c8a76e37be40b1c5127c8b2dc8b6989edd7cfd5e8fae5655'
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
