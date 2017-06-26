cask 'thunderbird' do
  version '52.2.1'

  language 'cs' do
    sha256 'ac5c2c799668542e67b841cce89a87338a3b93025ecb2eec8d3e29b581f23845'
    'cs'
  end

  language 'de' do
    sha256 'fb98ec6aa92641345134e2bb7a7d7882ff47d5194c970f63f69013f5d3295d8b'
    'de'
  end

  language 'en-GB' do
    sha256 '7eb8d690dcf6cf215c9481740a663c50382872aab3c3dad4384799a06a86ccc9'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'd28e27d5c81ca979c0ca7e02499ac639ed7ff7085f7783ba7ec7c8ca436f2173'
    'en-US'
  end

  language 'fr' do
    sha256 '64af6337773cfaa999f1fedc4f2ce16a1dc7c73a531638421dbbca226e6f314e'
    'fr'
  end

  language 'gl' do
    sha256 '190712b89e77a6c6b5e9112a3efbf7860602d8b013a0e8833851235a4fed8f08'
    'gl'
  end

  language 'it' do
    sha256 '31c2000213e3ae7d1ecca74a69e352fbe80f797e01833ff5e77d52be0c21e0bf'
    'it'
  end

  language 'ja' do
    sha256 'db8df93008262775d3bb0e48534556bff9d132149bfa7be402b4db7f4f27deb3'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '42ab0883bc464326e37de8ff9a54b1204ee6c6c4e59489f8823258bfb75bb523'
    'nl'
  end

  language 'pl' do
    sha256 'db20825c9f5d96540a2e3976e31d44ccb5e8955ca3b08062182b088e5ff34db0'
    'pl'
  end

  language 'pt' do
    sha256 '43c302e9e15fe99ef2d941caa140a874370acd9b785f3d6c6276459e17d0eeb9'
    'pt-BR'
  end

  language 'ru' do
    sha256 '95761d0a22f7117be5ca188c7c527ef9c2824a1789be0e82341bc5b0cef8cf50'
    'ru'
  end

  language 'uk' do
    sha256 '678b91b7950ad67e4d7f3ab4ab99524d287d925fbdeb0b638c2ecf486171afa5'
    'uk'
  end

  language 'zh-TW' do
    sha256 '1ab7b0d18c26ebaaa0f5811285dacb8794ae614c20cbd7894a72a48ec86f6c9d'
    'zh-TW'
  end

  language 'zh' do
    sha256 '707d36afbd5bb0017496b07ca37f0bea7c962597857274b9d0e8c202be0f81d7'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Thunderbird/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '3eb2b1216da873f4eb6fde06e9c2b98e6b468774a6ae820f84709381ea3ccb28'
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/thunderbird/'

  auto_updates true

  app 'Thunderbird.app'

  zap delete: [
                '~/Library/Thunderbird',
                '~/Library/Caches/Thunderbird',
                '~/Library/Saved Application State/org.mozilla.thunderbird.savedState',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl',
              ]
end
