cask 'thunderbird' do
  version '68.7.0'

  language 'cs' do
    sha256 '18d72ceab8c463b68ba34e1c2c153ff4cec2eb47aca4942726c558451253ba99'
    'cs'
  end

  language 'de' do
    sha256 '94254f3ac8de74fd6f9bd8a208e4c40535ca58e284fb1be5a6c8586632bfd45a'
    'de'
  end

  language 'en-GB' do
    sha256 'f1c8fb76308ec51be50f98969cc72993623f2a8c3d14e661158bb05039f70499'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '8aa7f10be04378d7bfd1810f3439ea2ec2a339b466e33ce480994697a61667db'
    'en-US'
  end

  language 'fr' do
    sha256 '6bd4e15bd3e29b69c75637d316bd0e82e6840879907d662e5f99f5499a159636'
    'fr'
  end

  language 'gl' do
    sha256 '2153104f4b05f494f5159dbc87b84e88ba56eaea325e2a5d513262e784c7957b'
    'gl'
  end

  language 'it' do
    sha256 'b6dae53ed6dce09f332c2c29f60160c3ee4eda480b81f53c7e9b7a6278311d50'
    'it'
  end

  language 'ja' do
    sha256 'c1d11963fde677a688676164fa28e0cad3c75650516df589f729dffa2e5e83ba'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '45850cc2079ac604467582d96ed30ae66a3b2036c84e1b1fb3cbbdb6625d55ba'
    'nl'
  end

  language 'pl' do
    sha256 'b8674bd9dc19e9026e006febed2e90fd2aa664bfb65ace193b220a50564ef36d'
    'pl'
  end

  language 'pt' do
    sha256 '8f9d0dbd1ff9e8fda514c826a6e1f5951d4dc33418f22b3008ed66922b7dff21'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '3da5482e66c95aead9b27f2b6a6835cd8077b2350feee77d087ce4661152abc3'
    'pt-BR'
  end

  language 'ru' do
    sha256 'cbc0793e5d73d714f9e126a9b7f0a903b3557a9e22f78d4d5fb977526be12070'
    'ru'
  end

  language 'uk' do
    sha256 '924dddbab0336e22f70b76318eb4157e0a7d91d9c81bec0ac1b9b133bfb664e6'
    'uk'
  end

  language 'zh-TW' do
    sha256 '800c85a11cb591ebd13bdd3dab21bbafb34fc5613508bc6ae92ff5b993eb8668'
    'zh-TW'
  end

  language 'zh' do
    sha256 '7bb2219f5abd8d6565ae33b3807cb4faee2957f5d9c2d632d6324381e6536745'
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
