cask 'tor-browser' do
  version '9.0.5'

  language 'ar' do
    sha256 'f2688ac10736d4e8eb88b362b9bbac5e9569e7379f0414141e58d6e1863612cf'
    'ar'
  end

  language 'ca' do
    sha256 '4c4f792645c91a41c66aa0e433545cb6b1f9e8297129d7e72e7b318bcb23d0bd'
    'ca'
  end

  language 'cs' do
    sha256 'efc771bd4e116b1464973eaa6e704dd5ec3b3ae1ef6a2d15a9c66cc4721eb3c9'
    'cs'
  end

  language 'da' do
    sha256 'cbcccf93e35a152cb3c419552d54fc2aae03714ddff8c89b703a86606aedeb1d'
    'da'
  end

  language 'de' do
    sha256 '3ff8dab7aa61a3eba9dbee1851de0322053200187617cbaefd3e672cd439d5b9'
    'de'
  end

  language 'el' do
    sha256 '00d9d894ef0e28bdd834b891747aa642284cb66829cdcb29ea051f0bb8b20277'
    'el'
  end

  language 'en', default: true do
    sha256 '51e40ede5827259b0183dcea7043485015fb9633bcb551adcf61a623d5d4bb63'
    'en-US'
  end

  language 'es-ar' do
    sha256 'cadcb0c9605596b3dff52506c1751f68bbf44b76aa3a44dabac0e87eed3e74e6'
    'es-AR'
  end

  language 'es-es' do
    sha256 '02b82e7dab6e7398b51777cbd3e2f8fb84bf3e4adffcbf2ebcb74412a58fcd82'
    'es-ES'
  end

  language 'fa' do
    sha256 '04103eb263ab441df59e21e0a3fe4813ab2f336bdc1bd84f906d2b82fffa5529'
    'fa'
  end

  language 'fr' do
    sha256 '7fc4de7a4acc282df3156f29907c39b0f98e3c079ca087cf3e163e2e3392111f'
    'fr'
  end

  language 'ga' do
    sha256 '9cb8c6bafc3234c6f7a493a50966adde9365de1743ec9535e198cdc715c043d7'
    'ga-IE'
  end

  language 'he' do
    sha256 '7647e9946b4107f75d42b7fa9d270837e0b23f77962dc751f865cacd8baa2847'
    'he'
  end

  language 'hu' do
    sha256 'b39dfcfd0159d2a75e95b88ef6c560f7ab3e43e38b8166ccc3d547eaf8b86a0d'
    'hu'
  end

  language 'id' do
    sha256 '943ac100a3642f74af5fa366ed4960397b8d37613e4cf4cb0993699189cfcd27'
    'id'
  end

  language 'is' do
    sha256 '873c4ea1e543804146fb62b3752e9ce7fb940b67aa3dad9a78158acab360907f'
    'is'
  end

  language 'it' do
    sha256 'a895ddd5b3e099a869956d9a1e4ae5413c14c55c518f6ed94ac840551f24b12c'
    'it'
  end

  language 'ja' do
    sha256 'fe115f7625a3569d7cb5db536d2d9c95d7f5a118f35118acfb15aaee980be3b9'
    'ja'
  end

  language 'ka' do
    sha256 '1154d9ce09e590552f6a55ab27a47891a2d857db05c9a12245459d2d6990435a'
    'ka'
  end

  language 'ko' do
    sha256 'df9a1bac32378691dbd8e4e861d830a7a1de2643f52c509e08502148ddb13af3'
    'ko'
  end

  language 'mk' do
    sha256 '6b8389dd0e2f8d673298a3659d4a87d8d61573c4ac1b4be82d36938edaa01d9b'
    'mk'
  end

  language 'nb' do
    sha256 'a5c52792076547e5ed39410a8b9cddbd5fbbf053f54ceebbc60dfccb628b796d'
    'nb-NO'
  end

  language 'nl' do
    sha256 '608face60ea6a286dcce8be4f12145d0330d0ca8ef2f16e780724070ccd0a570'
    'nl'
  end

  language 'pl' do
    sha256 'aad20f1df1bfee71f79c789c335756ee22ff43bf50fa7e0d7ea45ba47c204b02'
    'pl'
  end

  language 'pt' do
    sha256 '13ccfcc04937da6df7c59aa37f7677a2cfc37d14f06e72ec066fa03dbbada425'
    'pt-BR'
  end

  language 'ro' do
    sha256 'cda909258a03661eab485a6ec022682d774b297cb3e8a65022ec8cef962ea4a0'
    'ro'
  end

  language 'ru' do
    sha256 '6bef6776d7f316c74d71dc6e19c5aa164073781831fae385545096dc92f0636d'
    'ru'
  end

  language 'sv' do
    sha256 'fe6b47b481d38e07addd88bce45dd93a9072b6749a9d0d5067dff6a017ca362e'
    'sv-SE'
  end

  language 'tr' do
    sha256 '5bd8ab2147aa6573036b4b8405fa038acc9087ee91e34f1720c19962414331b8'
    'tr'
  end

  language 'vi' do
    sha256 '543b74c33dfa2eec6d889159be35bceb4fbcb980fac35d464c5a488f386e24eb'
    'vi'
  end

  language 'zh-cn' do
    sha256 'd6bd56affe69d3bbef4ad07bbd0b5e8f06342e2a016d0c41394a2e25ab385d95'
    'zh-CN'
  end

  language 'zh-tw' do
    sha256 '721e4086fccd556bf8241be024650b33e6028de455dd0f36564ffc35ef07fefb'
    'zh-TW'
  end

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_#{language}.dmg"
  appcast 'https://www.torproject.org/download/'
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
