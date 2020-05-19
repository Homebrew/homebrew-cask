cask 'tor-browser' do
  version '9.0.10'

  language 'ar' do
    sha256 '3c77124144d663fbb985a1d972eb34c0e4366d446605af6745705dd1ef13bf3d'
    'ar'
  end

  language 'ca' do
    sha256 'af93c7204620007a416cdddbb398601f9b5e1e97520b0e926b793777a712f8be'
    'ca'
  end

  language 'cs' do
    sha256 'ceaef7d8322b86b4a4784dc52296b3b050f72970d8c8d8e4bcfdd8bccc36533e'
    'cs'
  end

  language 'da' do
    sha256 'ae158768e4675663c7b3e474336620d7c6b5e16d78e047a739758dd9f3b9581d'
    'da'
  end

  language 'de' do
    sha256 '4aa6c205707e4cfc7b248b88dc7ee4924efcba84e18c5dee3461d7bd1412dcf1'
    'de'
  end

  language 'el' do
    sha256 '4dfcb783e50713cc0283f16ff06f1ed99acae44ae48562f20a55b1a379c70ca8'
    'el'
  end

  language 'en', default: true do
    sha256 'b4ced5977bc1b7999e3eeb8c09e01b50346b257ce349f79ba8a859efee4eec67'
    'en-US'
  end

  language 'es-AR' do
    sha256 '457f862902bcc14601e68b95ef4fa6fd420631e43d70202b6551982c8aa80fac'
    'es-AR'
  end

  language 'es-ES' do
    sha256 'b20d862180e4ad056ce620b48d58c481cf0a5e23c7c6d7d0da3dfc0bf4e747bd'
    'es-ES'
  end

  language 'fa' do
    sha256 'e073393036b6cf2d79d08ec114f7e54587c49db3a85bbfe4f10bd373e467af04'
    'fa'
  end

  language 'fr' do
    sha256 '434c09e3d4d2cef10d516a7e05220528294b2551535808c7fccafe2bfe748382'
    'fr'
  end

  language 'ga' do
    sha256 'fafa8d10c8c3db898ffabdc02733aa97813de0463f1773663c5ef66c3808171d'
    'ga-IE'
  end

  language 'he' do
    sha256 'f6c85d5407621d9c432eab503e5808c7db84c16ceceaf567ab1f5fd9086d9f84'
    'he'
  end

  language 'hu' do
    sha256 '5d1b259df24880360844b7963a0fdf799c2586abb804b6430c80cee95e846764'
    'hu'
  end

  language 'id' do
    sha256 '64073af1f39005d3240b83c9e3fd7bb7813b15f69293068bee905d922040b3c0'
    'id'
  end

  language 'is' do
    sha256 'c4ea38d1f4805ec4aff41357519113c106f6906fbe457af969bd67ae7c1c99e6'
    'is'
  end

  language 'it' do
    sha256 'f0922c0a386eb7284d89e16d8b7fcd8068ac16eae30526910f162343a21d621b'
    'it'
  end

  language 'ja' do
    sha256 '9b9c2b47d12dea870ac54cee6099a3699ea69f305cc4f68dc3498d5309f6bb31'
    'ja'
  end

  language 'ka' do
    sha256 '4c4cd4155bd143ec4eaf125672fcfff87f2fdbc5184a7f8ff6442d831399a75b'
    'ka'
  end

  language 'ko' do
    sha256 '124996d17b201bb253df8426aa4d712b5151c880e778b1538c8249d1055ef095'
    'ko'
  end

  language 'mk' do
    sha256 '80b6e06ac67f0ae63cb89b038a8627c223c955cd9defcc29f74e00763dbf6365'
    'mk'
  end

  language 'nb' do
    sha256 '85844d5709d6200dc2e800f536c9c0ca4c9f8ca4f1cb09e4ecb9c96de46406ca'
    'nb-NO'
  end

  language 'nl' do
    sha256 '06193212e070444c64e5304ab1846b903e2aec85c5ce08bc3678acaa9eb52c06'
    'nl'
  end

  language 'pl' do
    sha256 '455629f657e816355a338f084f2d90c9ac7cb749c3092baf9e02da3e08465ab7'
    'pl'
  end

  language 'pt' do
    sha256 'ebb8102baf30fc66b3560684b7701f4e441c6b7261a4f5d71c93700ea73d935c'
    'pt-BR'
  end

  language 'ro' do
    sha256 '281bd571afd28af9719d90bf78106f4bc6a275f52ed3ad43dd85ef031fd67316'
    'ro'
  end

  language 'ru' do
    sha256 '8e1bbc28828048e7be92a1efad21933873b317dfe8c4a13158272dee321189d3'
    'ru'
  end

  language 'sv' do
    sha256 'c1ea4faa263899eb2e275d0774d7b2de412b9b104ddb530e112ceb04f2e5ee12'
    'sv-SE'
  end

  language 'tr' do
    sha256 '64d42a2f2a9445f06ca29a1f1743fd76921fd8863b56b14a75f846949ab65f40'
    'tr'
  end

  language 'vi' do
    sha256 '5259fc82c89488f40a84b73f3b435fd182629480db710662b44a19aa880b833a'
    'vi'
  end

  language 'zh-CN' do
    sha256 '10cbcbe069b72404e0632356bdce2ec2b7675d2ca5e9bc7fa1e5f25c0c3bcdbe'
    'zh-CN'
  end

  language 'zh-TW' do
    sha256 '363abd437fdd5643dcb991512676d7882e89628c343e7976518168bbb9970c18'
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
