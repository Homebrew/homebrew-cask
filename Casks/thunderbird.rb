cask 'thunderbird' do
  version '68.8.0'

  language 'cs' do
    sha256 'ff21de4b253c69cc7b4fcbd0ba6bdd5b3534fe4a5514a73f4ae83c7031f38d53'
    'cs'
  end

  language 'de' do
    sha256 '2b12408e2855dfd94765171e89a2b027aac9b695d4ea77304a2e460f689fdbff'
    'de'
  end

  language 'en-GB' do
    sha256 '106a0036f07280d79f965585baf9f9cf4782c2dbae07f063f8e925a3c4c9f622'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'abec1013b3267bb91215798b32387cdd05a9835b6c50bde1cdbad1df5c45b032'
    'en-US'
  end

  language 'fr' do
    sha256 'cf20fafa58d4d8f30a815c11df2eddfe4a6e49ff3f1b61abbc11bd62ffc96f06'
    'fr'
  end

  language 'gl' do
    sha256 '3a2ce3e725c0d3b1b089fecc09f34d207a297e7dc14e8c9c6d54fef36dc7f731'
    'gl'
  end

  language 'it' do
    sha256 'd55483bdf6d016e076d3f665f1b4d6329de46c2116542beda3674afa78ad53b7'
    'it'
  end

  language 'ja' do
    sha256 'b995e97ddb39129e7ef2682eb93ad5392a2cee653b366e731ba17d59eeff38b6'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'a6f30e8f6eeb9a5bbb5afd0dd61bd296322df948942cdaa3f55d516ef4e231e3'
    'nl'
  end

  language 'pl' do
    sha256 '69e2edf2407b205aae64cf7e353443fedd83b9323a3885f424a339959e1fba4d'
    'pl'
  end

  language 'pt' do
    sha256 '0e2906b9fac8772a78314abbb2f86eaecb1ecbd16d3d562f0a2038f8cd9c80a8'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '05633059ab593a39f65da3f7286189bedb9bbe3a1fb0acd7c59a7513c9607d93'
    'pt-BR'
  end

  language 'ru' do
    sha256 '8002b8ab56ba9f97518268d5a8ae6f6ac76a4fd7182d10011fc967230225a590'
    'ru'
  end

  language 'uk' do
    sha256 'ac88551320b22d944ca6a97b0da0f2d8e1ee997625698dc278b695727ba39dec'
    'uk'
  end

  language 'zh-TW' do
    sha256 '3b7a02a38de7e0a78a8de54b8b07d212d6e3b37186df7fdf1a96781c4c69bf1d'
    'zh-TW'
  end

  language 'zh' do
    sha256 'b132c1989d308f6776c80af7064beb7ac7cc10093f7cdd94b261112e3ea67e4d'
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
