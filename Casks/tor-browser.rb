cask 'tor-browser' do
  version '8.0'

  language 'ar' do
    sha256 '8f875fb4919b5226d20d8052f0a87d5ddba9da13aa7920308192955106f32f38'
    'ar'
  end

  language 'ca' do
    sha256 'ba79df9ad648b76c81b6e959c022174e009a4f50a10273f032d8d1e37d0853c1'
    'ca'
  end

  language 'da' do
    sha256 '2ceca436ffdef5072f1d5ef158426f70c29db88025c987fae064750fff691a7a'
    'da'
  end

  language 'de' do
    sha256 'd1fa6ebf4e0af86e5fd4c0c0d4d4885e3cb712345958f01a25073a0e13662da7'
    'de'
  end

  language 'en', default: true do
    sha256 '15603ae7b3a1942863c98acc92f509e4409db48fe22c9acae6b15c9cb9bf3088'
    'en-US'
  end

  language 'es' do
    sha256 'cc209ede8fbafb8f85260954036fce3da99d8799266e096b8e81f75b18718351'
    'es-ES'
  end

  language 'fa' do
    sha256 '73c525c4accf22e8ab5d62727fdcebc2251729f605f818f5245707e006aa0110'
    'fa'
  end

  language 'fr' do
    sha256 '3685a33fb7a2e827df9bd5756a03b4d2b86a39aec91838cba04465fcba637450'
    'fr'
  end

  language 'ga' do
    sha256 '99daa6bfb57e534e9e26acb951a4a1088fa4d7c6770d620a056adbdccfde264a'
    'ga-IE'
  end

  language 'he' do
    sha256 'fda40813c49a9d1e8825e62ae384ee3c873ed8f491cb284116a7135e550544a7'
    'he'
  end

  language 'id' do
    sha256 '454d89e2d6d34da81f8b77a577bac8c4210601df2c81184c216c61481c5438fd'
    'id'
  end

  language 'is' do
    sha256 'a10c85b8647784afe47b697254b41feb441e9ef68386befaad52cdabfa4582b8'
    'is'
  end

  language 'it' do
    sha256 'd70450eedf137ec0649b0e5ef0867811172c0a5995a3130d33818358007e3f7e'
    'it'
  end

  language 'ja' do
    sha256 '5a69fee924ef3c5651f9181a3069c4993bea560d53e895aa4cb9e30253761cb2'
    'ja'
  end

  language 'ko' do
    sha256 '35ecb70788be1244cbeb2a087d47f3d3debcc25aafc1bf3bab2f4ce6757f2a60'
    'ko'
  end

  language 'nb' do
    sha256 '67f7d5479176a63e2cc41f3fa51ed8d8ee4aca963b9f31b8fa689cc9e98801d1'
    'nb-NO'
  end

  language 'nl' do
    sha256 '47484f30ab4d0625374b244b835b88bf60c6058e1df772707fc9fd9268b10366'
    'nl'
  end

  language 'pl' do
    sha256 'c8b6bd275c9a4759f28256aaee4dc2b2e6d752262a59bfb35aaabee2b9fbd6b2'
    'pl'
  end

  language 'pt' do
    sha256 'fb23e89dbb8fe775bc0c783626e13f3dfcd56a66ede8d7982b03178b0c2fe573'
    'pt-BR'
  end

  language 'ru' do
    sha256 '01034937b34e87dfd070783bd7020123d512788b1e6d43cc1385d0d52bc1d640'
    'ru'
  end

  language 'sv' do
    sha256 'a9a452d1048b232102727a1d7db7231759dc4271d4f2b5a57dba8091496fee08'
    'sv-SE'
  end

  language 'tr' do
    sha256 '2d6a12d58fa58f4f0b33fa7f4f5078798a7b3ace61c2625574e27c3a95f32080'
    'tr'
  end

  language 'vi' do
    sha256 'c81e8c751a40e05606d1e43e6d2231c08ca8db5072ea319e4d0a9d8c93af630e'
    'vi'
  end

  language 'zh-cn' do
    sha256 '16d6dbfddacdc768b32de53ed6ca54c8645334f2aa1c3ee0e2b9f041d038e331'
    'zh-CN'
  end

  language 'zh-tw' do
    sha256 '972f7c05bd0a0f88a5bb8a86f2fe2537281d5379eb2de892fde4d9c6ef108446'
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
             ]
end
