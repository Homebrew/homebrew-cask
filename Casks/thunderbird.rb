cask 'thunderbird' do
  version '60.8.0'

  language 'cs' do
    sha256 'cd3cb370718822db5115276e7e14e80786ddf590f39825e33a13843b9e058fb8'
    'cs'
  end

  language 'de' do
    sha256 '636aab773c6991eebccd698aa7c7246e261eb827dd9379deda38bccd42814eec'
    'de'
  end

  language 'en-GB' do
    sha256 'cb93a157591093bfef9098d94a8ef48f92ee70cd8c41039eefba4f00f0629b9f'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '2b58d6e8fe73df5b95110c56df72dd8c20961254cbb76ace42bb126557fa3bdd'
    'en-US'
  end

  language 'fr' do
    sha256 '3321ad9fca6a91cb4729461122256ca2c6f568ccb672c20330744c5b68914f3c'
    'fr'
  end

  language 'gl' do
    sha256 '85f1b393d1cb11b43db3b8870e99ef23800cf3ee23eb875dcb853b7dff605c30'
    'gl'
  end

  language 'it' do
    sha256 '225eaa5a1de88a4547b0f9490ff3fce807fe495cbb43cc0171def453ea392f38'
    'it'
  end

  language 'ja' do
    sha256 '452f67869404a2fca0d59f0c7b61422ca670983f4383977d4da829bc6af7a499'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'df81efd84c91042fcb87cf3f226d0a359e0f0f097708467d469e03748305706f'
    'nl'
  end

  language 'pl' do
    sha256 '2b909a2adada94e0c2a38d800846c681ede40108786851c08b14d2f716335bc7'
    'pl'
  end

  language 'pt' do
    sha256 '813cdc608a7fda5913918daa66b4d2686d77931674c3be1f28fedf7e0e275ad4'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 'b2eef73878ff8f8c72546b7443e2028adb2bb70108fa14ef6e466d146103e49f'
    'pt-BR'
  end

  language 'ru' do
    sha256 'f71d705226257c8317f92fdbfcf7a8756775b3f28935072cbeffc3411b8f63b1'
    'ru'
  end

  language 'uk' do
    sha256 '171bb3b834a57fa266532af071e43449e2b71c09e908ad296711bf04c854a787'
    'uk'
  end

  language 'zh-TW' do
    sha256 '4508a59cfe7e183a70d352936a17c6b44ca09d37e5ef9fbad4a0eccab6b09dc9'
    'zh-TW'
  end

  language 'zh' do
    sha256 'b2e7a78832d991f7e6d99d91cc85401896590714c6bdd365112ef62ce1b2b03d'
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
