cask 'thunderbird' do
  version '52.6.0'

  language 'cs' do
    sha256 '09466cba16d991402fe952170468ab3c712e0a153401c70f19634db51158079c'
    'cs'
  end

  language 'de' do
    sha256 '18c757dc60586d656ce7e75f6e97b25f36cbb86eb3578abaf1412ca1505834ab'
    'de'
  end

  language 'en-GB' do
    sha256 '2d87dbff2760f0ef7c756a8c76399933e1aa738621a993fc5bce3a4c76cd39b4'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'a456e160ad57cfeec7a18d1d133001595ce52324c57e69ee49469a40ba7a5c28'
    'en-US'
  end

  language 'fr' do
    sha256 '2ae50eb1c9e7668c4c50ff4c90616f5ff25c4ec06a49695ce78da62753c4efc1'
    'fr'
  end

  language 'gl' do
    sha256 'b25e32cc400a2eeca8a81140d246feff878092fe0325dd882f12b4dce7b5df8a'
    'gl'
  end

  language 'it' do
    sha256 '8a189e4cb31f8554691777e45b3f17bdd380ff0f3d256c8c72992456f1e9bdab'
    'it'
  end

  language 'ja' do
    sha256 '0ea864c475488279561daf5795b98693792ef56e4e91143e4758c50eff96cf0f'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '82d57cf2d079e72b53f7f5e3821017cd621c43675ac3a7a5f88737f7761c3fd0'
    'nl'
  end

  language 'pl' do
    sha256 'dc2a88fc4bd0b316abb8b3dc968d6d44112ca6e7eb415efd0643a8335d0742a1'
    'pl'
  end

  language 'pt' do
    sha256 '62baf0050319f5118faef0a60e4b64550da4b08616d758892ecbfd341280ee7b'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '615cbe0dec5161d123d90fd81716ed52dc391f3c19016ef1eb580dcb7e25ce8f'
    'pt-BR'
  end

  language 'ru' do
    sha256 '1162a192125f2a263f4dc1f07fd15095a9b7be508413bb627ab1ec151f1554cf'
    'ru'
  end

  language 'uk' do
    sha256 'ae7c0136b1d73644e0c43f873fa49d07138e3fab41b97accb5439de0b3583df5'
    'uk'
  end

  language 'zh-TW' do
    sha256 'c07cd9733d4b7ff51339b6508536ac227b198125b8d439a8b24127f932e1ddf4'
    'zh-TW'
  end

  language 'zh' do
    sha256 '3ebb0ee7f4441fa20a991d719a22cf7ab235f7e2a608fb989cc1583ef77e606a'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Thunderbird/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '2da4e02bfe109e7f6c7e7f4d40b51cb0fe59cc99c3501e792a2c5194fc3ea7b6'
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/thunderbird/'

  auto_updates true
  conflicts_with cask: [
                         'thunderbird-beta',
                         'thunderbird-daily',
                       ]

  app 'Thunderbird.app'

  zap trash: [
               '~/Library/Thunderbird',
               '~/Library/Caches/Thunderbird',
               '~/Library/Saved Application State/org.mozilla.thunderbird.savedState',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*',
             ]
end
