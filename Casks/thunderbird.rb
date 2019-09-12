cask 'thunderbird' do
  version '68.1.0'

  language 'cs' do
    sha256 '6cb5624c82fd0d259fb59dfa9bfb0b4e07eadd46417c81ad076a424585aa4689'
    'cs'
  end

  language 'de' do
    sha256 '2f736f537a57b4e9ef540a1f593567edbbfa5b8dc63adcf29763e5a6dd22cc18'
    'de'
  end

  language 'en-GB' do
    sha256 'c554d9386698757f70fb0270233476193877aae1a628f49bf828f9e641b28535'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '25750a26a9a064b9ac4075d93b04ad5431a29c26e8a8b7c7fff4d3648d3bbb29'
    'en-US'
  end

  language 'fr' do
    sha256 'cbc345e1aad64458547ba8e47d3f9066e1a0453c0930fb3b087db3000466627b'
    'fr'
  end

  language 'gl' do
    sha256 'f686988feab5e49250b2ca7dffae692718033c914d9fab21707bcabb303609de'
    'gl'
  end

  language 'it' do
    sha256 '2514ceb1727d3879a69e3740cd81718b2f4054a7017ad42f4ebf352e4ebc28f5'
    'it'
  end

  language 'ja' do
    sha256 '80bf73c637a956b3736cf5c4c57aee1ea70ad98ceca46493af704d092042cd85'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'ee6e81b6c9862186a8d1381ee8c0e7657094f7b4c141ff74b6797228ac43ec56'
    'nl'
  end

  language 'pl' do
    sha256 '4807246b3d62ed5a2c958bd76aa439d26e2c14b3ad9ffa7118a877eb5e2b8707'
    'pl'
  end

  language 'pt' do
    sha256 'be4a8699af5c385e8db0be54e70fb7f5873483eb1909af2738d4fcde45f53969'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '306da4d341c76deef036131799e699fffce89a8bb7bb6b036503ffc5b9c59ee8'
    'pt-BR'
  end

  language 'ru' do
    sha256 'd0b971d2e92a94e48f3ae9fb09abca86301c497e31bce4db2d63714ff4ce8d76'
    'ru'
  end

  language 'uk' do
    sha256 '225c6f13f8ac8a3d7b4ab96cf3d1c5692e3330170bca0aebb4ec3b1c98491238'
    'uk'
  end

  language 'zh-TW' do
    sha256 '88771aed0fdc5bad333a85eb24c61df4426105df5a41f6dff6fee2d2021b6e89'
    'zh-TW'
  end

  language 'zh' do
    sha256 '8befa37699f53efcb2ff6d943bb5d8f8e786bc464b95dc18143c8b6ff0aee334'
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
