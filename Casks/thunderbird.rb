cask 'thunderbird' do
  version '68.3.1'

  language 'cs' do
    sha256 '8496d7df00ea211a9aef368dff48f85ca13419c869b9d6f55b91ce19d2edf66c'
    'cs'
  end

  language 'de' do
    sha256 '7947da3966a3af6100d75c36b22dd21ecc004afdab8ec4de078e291ad96af32d'
    'de'
  end

  language 'en-GB' do
    sha256 'f8cec7853b6e741c81383f431025bfa13f48f1bd29ae688a682926f66bb78fd6'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '6c352d7d12cb9a32d11332a4fba3b95d4ffbcda4e883459007341cb364694139'
    'en-US'
  end

  language 'fr' do
    sha256 'd7ae81288d75523af70ab83a75e1edbcd409c0190162c3a72a547ea123ca161f'
    'fr'
  end

  language 'gl' do
    sha256 '2fe7cc94a363bb561d3b79324ee4087f42037498623124b836ccfed4b0c9b464'
    'gl'
  end

  language 'it' do
    sha256 'c219a4876bfe544e7564de4ff389e1ad549a5e3fac22b4d57ee12bed80a01c53'
    'it'
  end

  language 'ja' do
    sha256 '12959ee779f9168dad50a5073d4b7601c225802d0159653d14aaeb7b1045b469'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '9d6d1250d302a506f2d7f807d3e296b076f0a29f331e47833a54951f8b569145'
    'nl'
  end

  language 'pl' do
    sha256 'b14cb1584e7f750a336cbe9831878afa6b13d7e9155c535919b922ec3155cb65'
    'pl'
  end

  language 'pt' do
    sha256 'd616b3a92e647b43d9294b2b8d22c22290db3ed6b0b4f4de8697b6f9699a9ffa'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '66c65c6d36c16544d214bbb7b1685d5d42e9936f72467bd88b0e24c6c677ccf2'
    'pt-BR'
  end

  language 'ru' do
    sha256 '5ab55fd027c297b5ee4706bb24065fb267667579282ebd22c53c54d30a462f31'
    'ru'
  end

  language 'uk' do
    sha256 'b3659e7514fdb0b293a2a06b1e3bf93c2813e0c41d9b62a131a475681d9549f8'
    'uk'
  end

  language 'zh-TW' do
    sha256 '08d0d0da51bf21b4f3f9fd0d6728f700409f1c47bc0c047dc87abb98991cbeec'
    'zh-TW'
  end

  language 'zh' do
    sha256 '5546c4abdfc806f93a96ebe3aaca85795af4b6371980428a246db464b34516eb'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  appcast 'https://www.thunderbird.net/en-US/thunderbird/releases/'
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/thunderbird/'

  auto_updates true
  conflicts_with cask: 'thunderbird-beta'

  app 'Thunderbird.app'

  zap trash: [
               '~/Library/Thunderbird',
               '~/Library/Caches/Thunderbird',
               '~/Library/Saved Application State/org.mozilla.thunderbird.savedState',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*',
               '~/Library/Preferences/org.mozilla.thunderbird.plist',
             ]
end
