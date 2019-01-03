cask 'tor-browser' do
  version '8.0.4'

  language 'ar' do
    sha256 '443c50dd5f27c77db050a570a6e939d9ef93d136a4146c7011dc624f5d85bb99'
    'ar'
  end

  language 'ca' do
    sha256 '8d9132f1958a70fb64ac78f0a53a6347c78dcfc2caeb615a7c09b3afd51b9256'
    'ca'
  end

  language 'da' do
    sha256 '9287a17819e543622f807e8906568588e41a46ae4ed8f9410bb1e71d0cb36b39'
    'da'
  end

  language 'de' do
    sha256 'a824721eb1d09a2eb49ee93e46a0cc58e87a33c99afcc794f9c116f89a7334ba'
    'de'
  end

  language 'en', default: true do
    sha256 '44433ee2052cf3062e0dc29e640a6ae50db2775bc8939253f5f9d81614f2db07'
    'en-US'
  end

  language 'es' do
    sha256 'ad57290b7bf7ec86a1ee454b2c04c34db17bdfc0a916c9ba85c623c38fba38bf'
    'es-ES'
  end

  language 'fa' do
    sha256 'e5dbd16c9e15789043296679b206520f5089f98973cb00bbdc32cabe8895bf9f'
    'fa'
  end

  language 'fr' do
    sha256 '3bd43374640a5f37f906c945f6b98e2e3395044515755bfa561bfffa1f3af292'
    'fr'
  end

  language 'ga' do
    sha256 '91d2d50ceab934389a17410cfd6a5273ae7c5228c482725027cfc3211bb6bc93'
    'ga-IE'
  end

  language 'he' do
    sha256 'b4ccf452951f749d1edc7d8a8fdae66655ca7466f46cad39c87f81b0792c7327'
    'he'
  end

  language 'id' do
    sha256 '126388d49ec971e5014340ec2009cff33dc9ecb7e32b89cd01de38d9e2b712ad'
    'id'
  end

  language 'is' do
    sha256 '4da4fa4341b644c3e26d770aa508a3a5f84749a27ea3ed4250c06d2124892723'
    'is'
  end

  language 'it' do
    sha256 '33806ea7d0e4c5ae8c9d78a5e4533a2134a5f5e030e261eb0fb4c8e1aa4f0e66'
    'it'
  end

  language 'ja' do
    sha256 '25b3ddbc9de2a21bbf6df4a7f0b7c9ac72b13d3d05a6339971e63b8450597dbc'
    'ja'
  end

  language 'ko' do
    sha256 'e0fd1708f896aaa79a24f209ac5318b3b7ac2a8955fbf1db551c28b7412b4ee3'
    'ko'
  end

  language 'nb' do
    sha256 '468c725fc904962a89bf1c10708ce6dfff445fcf99fa779ba564fcd969f1ee78'
    'nb-NO'
  end

  language 'nl' do
    sha256 '1961b0cfb449eb0e579992257d9102fbc0e5755417579e6706efc844b9e99a2d'
    'nl'
  end

  language 'pl' do
    sha256 '9ed318b922a1e6d3f5f5ca26b046b0c89c10f329d04373e1ba48ddac7b92097a'
    'pl'
  end

  language 'pt' do
    sha256 '12ff7c64378f5e47e43d6b07e3c44257fa3d54329ae7bf44ed26806e718a53c9'
    'pt-BR'
  end

  language 'ru' do
    sha256 '2f90ee0cf29827211b5b3bd31a618793fc42af7628ec02e30d1a035256cec4bc'
    'ru'
  end

  language 'sv' do
    sha256 '48295a812ff51470596e2cd6d825e5b265c53a968806b91e8beae6d3c1d75879'
    'sv-SE'
  end

  language 'tr' do
    sha256 '8bf0d4d0d7944f59713a949fb84e702259bb51de8178e9c7375454bc821ec3b6'
    'tr'
  end

  language 'vi' do
    sha256 '1c62710d8394a3e83fc5caf06fa7442ce18217ebf335fd7d77733eda1cb06774'
    'vi'
  end

  language 'zh-cn' do
    sha256 '63e29e900722dae2469eb964f91b40e39a72d59c92a404e3d249efbae66fb8f6'
    'zh-CN'
  end

  language 'zh-tw' do
    sha256 '5982a6c6132d984130ead29758fcbff4daa62440cac85df955e9695e55895524'
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
