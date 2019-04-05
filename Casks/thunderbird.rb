cask 'thunderbird' do
  version '60.6.1'

  language 'cs' do
    sha256 '4349df85c1cf8d085b5dfec691e02216279096fb8ca30caba88e499f0841a3be'
    'cs'
  end

  language 'de' do
    sha256 'd4a43f0dc33b02a7e5d38c9665b9caa00998944af659478ea1f0e44da1a93b1a'
    'de'
  end

  language 'en-GB' do
    sha256 '3270d30c6528c13ca69a63df05a4f209269014d546dcc0701f177ec555f62b48'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'd1a1f375e828d109930c1e5476cbcc4de413cb845da7b5848a56dfb0547bafe4'
    'en-US'
  end

  language 'fr' do
    sha256 'fd868a767f9a1fda1bbecb57daeb3f9d0e791a4a45d12d3e6686cd6ad533d757'
    'fr'
  end

  language 'gl' do
    sha256 'b44323a49301150bfb07bc270f93e45ffbe6e9e7ac63c6d5b5ae402eb5c23aa8'
    'gl'
  end

  language 'it' do
    sha256 '2929a3c1936999a8694b30fff7fbc1b8859f3ea1975733d7e49a3ddab1365cac'
    'it'
  end

  language 'ja' do
    sha256 '3500573ba251b195157df6e2c247df7ed19b39ec754f6398b8caebe370a3694c'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '68d07da20e9b7dd65b4bd019eda3f2c1917ae3f7e6f3dcba218c94aff43ae2ee'
    'nl'
  end

  language 'pl' do
    sha256 'b9cfe9329973236fbf3af0dba1bf6fec81b443a1d97f0e8c368638c0f25ae41f'
    'pl'
  end

  language 'pt' do
    sha256 '3f2672ce0d10552589b29f5cf2d32b1b45d1cae27e65e813e935c81c3d756a55'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '09677d468ff826a771daac176b8d22182acfb24d47cfd62d8f833cae6e68d4b3'
    'pt-BR'
  end

  language 'ru' do
    sha256 'adcfe0c65609b19b7ab308413d349c052a40f9260d8549e0ccbca6c3932e5433'
    'ru'
  end

  language 'uk' do
    sha256 'fdd2da9c9530e0b62a12bfa03d487e77dbdec7f94b9299aa948bd3b7457d1f67'
    'uk'
  end

  language 'zh-TW' do
    sha256 '4f1cff21842acc1435a03aba7c7b0cbe1ee42d2face1de7863304ead542eb79c'
    'zh-TW'
  end

  language 'zh' do
    sha256 '8403cb4f1f93ce0501dfda2d40a63da732d635a19b8a2806fc2b97ecca33ec7a'
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
