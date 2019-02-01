cask 'tor-browser' do
  version '8.0.5'

  language 'ar' do
    sha256 '8b5b3c8f7e2eaa4c84687c3209efa7f8fa9329bc6a2008678361247765e48278'
    'ar'
  end

  language 'ca' do
    sha256 'f5553a102e71caaca90ef42f089c30ed612c95035c4a4186a31a4847d666d424'
    'ca'
  end

  language 'da' do
    sha256 '437867281938efb52b1039783d7e3093206978c8127d5b32ddf32d2d26434f81'
    'da'
  end

  language 'de' do
    sha256 'c4fbe95b8614260dd2c5ea2b6a2db7dc568740989a153106f41ce2ed48ede499'
    'de'
  end

  language 'en', default: true do
    sha256 '08f0f79181319b74f8ad3a3f8c72a46356ec47f1ca3e22eb42d92e51451d9411'
    'en-US'
  end

  language 'es' do
    sha256 'c0389dcec321d1f2652f673d4e78533985b168a20caade1f089fea853366facc'
    'es-ES'
  end

  language 'fa' do
    sha256 '4f7df1d6cb4851a7692c2348930ec578f3d23ed8360a07641b62ba30a151a694'
    'fa'
  end

  language 'fr' do
    sha256 '740d82aa70000daee9709780c465f4c278fcb1e094df1c534d3bdbbe6f48594b'
    'fr'
  end

  language 'ga' do
    sha256 'b7d3e569e430db774555494e3f8fc9bb03056bd8dc0024cbf0a56e39511ec699'
    'ga-IE'
  end

  language 'he' do
    sha256 '992054bede7db93fe7a18178254be1f182368ed8d965263e16e4e48fcbfcbe6f'
    'he'
  end

  language 'id' do
    sha256 '62db25083541b52e2673ac6caf763f95047de3c2524489dec3d0a48bf3128601'
    'id'
  end

  language 'is' do
    sha256 '6087153d4bca8c9632cf744fe46c07b9ad2accd89c71fc073bb79a22d80ea64b'
    'is'
  end

  language 'it' do
    sha256 '5791db9522757d1e2cc7c20457904c594d7f3c6965a012b0eb488f9ed1d8db18'
    'it'
  end

  language 'ja' do
    sha256 '580fe5fdb7d82a362cc37b141b42d3503b3f9cf29cbf93d3be2419055de8121c'
    'ja'
  end

  language 'ko' do
    sha256 '4bddbc5a85f8aca957566b9b0e14c492aabb04f22c53bc260d2951a014574363'
    'ko'
  end

  language 'nb' do
    sha256 '90e1f30e37390f7cfc1e0d7c206521c359a763de60e8b6da0b371046cf8c19ae'
    'nb-NO'
  end

  language 'nl' do
    sha256 '34a04592698fc838c543406b52c150164327e130964e63b37c5a69c4201dda5b'
    'nl'
  end

  language 'pl' do
    sha256 '837c0ca0bc0909091bee671bfe0117b979e7b434d04c8e48172145517f591031'
    'pl'
  end

  language 'pt' do
    sha256 'bff94b973228e995e9ca52c313f8c295a157b0fce7fa0b85ddd4a4a05f038a35'
    'pt-BR'
  end

  language 'ru' do
    sha256 'a905bdd59066f7c8d1e749ba7036c16808d1d5c9f55a6feb23319dcf83e22dd0'
    'ru'
  end

  language 'sv' do
    sha256 '8863a458263022feba1ee6029094464f66b99bb4c4e53145420853126208853a'
    'sv-SE'
  end

  language 'tr' do
    sha256 '53a273e114d464c691c0540034746bf8ce99eb5ac64239599801d8488676eca6'
    'tr'
  end

  language 'vi' do
    sha256 'a541bd9827a121c0118bc685ae033bf828de7ae3d4060578eb26fd56e529f00d'
    'vi'
  end

  language 'zh-cn' do
    sha256 '30be7f6668d462a14157eb997fa3736f1fcec39110b7e550efbce02f4e60ae44'
    'zh-CN'
  end

  language 'zh-tw' do
    sha256 '37a79e0ab337951d5783fcb19cfff670219dfb10a0c96e49c6d1cd722d9b133a'
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
