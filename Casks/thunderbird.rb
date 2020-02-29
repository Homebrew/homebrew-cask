cask 'thunderbird' do
  version '68.5.0'

  language 'cs' do
    sha256 '9a87f86b84ee22288c7dccaf50ebc7909ff15bb29b229d55f8bfc3b906eb35ae'
    'cs'
  end

  language 'de' do
    sha256 '21a89f9ccfe74e34113838976bbdd3fce0a48b6c3073ab8be92c2f00a3c1dc90'
    'de'
  end

  language 'en-GB' do
    sha256 '3e5f57f921bdd4a612ac6c93de2fe7d01defd02741a2a8f2ba776f4a2b29f76c'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'd720d164e5dc0cafdc8fb48452acc5ad394b0b0728d308171f3567fc5d06c403'
    'en-US'
  end

  language 'fr' do
    sha256 'ea05b43c13c2ce99ee500bdd09a5a6d6f49b7aea7eddab3737b656516952a5f0'
    'fr'
  end

  language 'gl' do
    sha256 'eacd44725c3337d6b35c85adf920b77597b46f0c5899f5aa4b1e7305b10f76d1'
    'gl'
  end

  language 'it' do
    sha256 '0337d15df95cff70ee13c3c9310ad3e8875fdaf56cf82ecb0c7a496b2da3f58a'
    'it'
  end

  language 'ja' do
    sha256 'e2eda270b470fc7cec82b14d9113b2aa73cb56ed0d43afcca5f3cb0abea74e03'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '1752c2a491424eddaf2cdee1f21b5d65de3c0b0135ea827557f545a8b7cbf9d4'
    'nl'
  end

  language 'pl' do
    sha256 '71ac297de157d98c262b7898967adc53f7df63313df775a6688866bf166d6f14'
    'pl'
  end

  language 'pt' do
    sha256 'ff41e4418b29eea9a6455038e5538deab2851a31025a393dbbb50f98078f935c'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '1c048333945d58182b3eb561dcb16bd4b86a82913f3277cddc6934697f6d08c9'
    'pt-BR'
  end

  language 'ru' do
    sha256 '2101b610d2e019d3c351d98bd1adb1efd47fbacc02fbed0c4974336a2019b06e'
    'ru'
  end

  language 'uk' do
    sha256 'a068ef23b46c3693f0f04aae797a894cdb340b3451b4427bbe9850a1fbf7ecd6'
    'uk'
  end

  language 'zh-TW' do
    sha256 'dea4a3020bdb8d7bbde09d4185832ab8bee227f5c26b2c7218860e803a951640'
    'zh-TW'
  end

  language 'zh' do
    sha256 '9af923bf66bf4dc067099bdce8be2ccfa9c73aa20ce8c48b7d2ea0e0dc035590'
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
