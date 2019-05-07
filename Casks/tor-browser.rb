cask 'tor-browser' do
  version '8.0.9'

  language 'ar' do
    sha256 '72fd24a726acebf4600a8f1046f540943abea245c9f4fc9a781aba81b5a2a7e2'
    'ar'
  end

  language 'ca' do
    sha256 '6bd749aed945ce4c06687149f0890a1ce01cb2b007db83ec457f606bdd52a689'
    'ca'
  end

  language 'da' do
    sha256 '7d604d55637ac9fe6e182580fbaab4783182f1cb63360d1d8b4ae7988730a02b'
    'da'
  end

  language 'de' do
    sha256 '9e5da190eab30cb1acdd3a99d2c6b2292d25fedc13909e6b9d59d67a1c047476'
    'de'
  end

  language 'en', default: true do
    sha256 '6e8f4e191c561e50ca4ddf1c569513244083212f4002635d17832ea4f0c6bc02'
    'en-US'
  end

  language 'es' do
    sha256 '47478ca4dfb10ccab074264038a490321724533bf6468fbbd2d544102949cbff'
    'es-ES'
  end

  language 'fa' do
    sha256 '54c18856a8e08506b29ae35abafcc51c150dd01e81ef71a4ba20e074c8bd7e9f'
    'fa'
  end

  language 'fr' do
    sha256 'f1e3184b4f22a24572a0586021bb4d3dd2c5f411df075a69f01a820bcc47b711'
    'fr'
  end

  language 'ga' do
    sha256 'e87afe37f4721fa843cbd4170570d3ac964e8bfcf58655e7d72307daf208434e'
    'ga-IE'
  end

  language 'he' do
    sha256 '9b7001fa95d6245a0b3302061caad22a08f886a85ff31715ac35ef8fc618ed15'
    'he'
  end

  language 'id' do
    sha256 '3bc5ab75025f2ed75a264d36b3ef43e6706cf3b2142a6caa580ba84eefa26975'
    'id'
  end

  language 'is' do
    sha256 '186aa7ebf4677f0f129d0104f4978986f5036a0f5d98d9237ae45a6737d2e28a'
    'is'
  end

  language 'it' do
    sha256 '627babe5ac69dfcac5b3ae90ec3d187c0a0846811f69dc31f8a1ac4ffab92e30'
    'it'
  end

  language 'ja' do
    sha256 '263d5ce21425b3e1df808820112772af894afb651dfe7a1caaf86c88ed1a1d4d'
    'ja'
  end

  language 'ko' do
    sha256 'b1c40a352ab59f8ff03861a8187c61c2f7ff4b7dae73d3739bb6f32c6325e85a'
    'ko'
  end

  language 'nb' do
    sha256 '095210197b3fe35625d09c5e8517e3e94a8c34f66e03c5c94abf0d85782b56ce'
    'nb-NO'
  end

  language 'nl' do
    sha256 '7a68497a8b1608eec4f87869a8808e8f3d8b78faee62bd0497069c47db6b7671'
    'nl'
  end

  language 'pl' do
    sha256 '11cd21bb07aa0d390ddfc017e4588555bf94345ffb658f61a6d9315bfede8b77'
    'pl'
  end

  language 'pt' do
    sha256 'e34a40b8d820b0e6382345e0358a37af434b6f6090d14a6a22725df7304d0be2'
    'pt-BR'
  end

  language 'ru' do
    sha256 '7ddee1eabd47bda9eb409f1ae186a607c8959f20d038d4d674f2d5dd352de9da'
    'ru'
  end

  language 'sv' do
    sha256 '0d15040ef2602ee2154998a71589e083304cd1dbef03ff6b6f14a518a0bbb329'
    'sv-SE'
  end

  language 'tr' do
    sha256 '36f1d8eb9a9c17745cecbba2e4eb09b204121374b1195ced6d1dca31648fc7da'
    'tr'
  end

  language 'vi' do
    sha256 '24ab97ff3216e3b7213372fa6bb5bbb6bacffefccbdf98e371ce65747d4053ee'
    'vi'
  end

  language 'zh-cn' do
    sha256 'ae989131c29c02901097dbba45fc449b1851ef35032d2f87ce1fd2d7f660fdb5'
    'zh-CN'
  end

  language 'zh-tw' do
    sha256 '661fb17ab3d5cdbc251323931945b3eb1802188f637690e016dbb85496cdb681'
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
