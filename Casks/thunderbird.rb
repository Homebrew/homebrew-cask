cask 'thunderbird' do
  version '60.5.1'

  language 'cs' do
    sha256 '7dbe91dadbe3f1f3713622e7e2f5553147c91c6e29c3b99646a2f9b527cf5b9c'
    'cs'
  end

  language 'de' do
    sha256 '14ec22a32bd49a798b6a45f51a34be19054e8789a21e321a7c569a0498802deb'
    'de'
  end

  language 'en-GB' do
    sha256 '9aba6e119d623b1135eafa73546cbea4d68682e8459011798852da63e9926a0b'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'caf7930edb8ad8d1755b254383b5d38a59a219d31af38eca33c315de4e0aa270'
    'en-US'
  end

  language 'fr' do
    sha256 'f6d8f4d87e6bba361e8ee5af30cb27d30fb00741a3d05c342e95c5558ddfcc56'
    'fr'
  end

  language 'gl' do
    sha256 '053e71a68aaedcb02c44b586c2ab6c060f5c97a01fedd31a9c5efe35a849ee41'
    'gl'
  end

  language 'it' do
    sha256 '8594270a20ca99a5a8b98b15387a9da5a2f93e92be7dd3f66ee8c43ca9633a6b'
    'it'
  end

  language 'ja' do
    sha256 '94c8aa53886988172b464585abe30224b5f793ba27fb1970012b379e04cf5a75'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'c6cd99c07583d5fd29b5f771777b02777b326089833b4d4f3c79d833ddbcc91b'
    'nl'
  end

  language 'pl' do
    sha256 'abff5cba466471f6efbfb3b502862e1e6e2e9e4ff54c5538062ced2eb6e4be06'
    'pl'
  end

  language 'pt' do
    sha256 '70bd380b8183e097fd0d0ebcd3750ac9d5c83216a57589b52c7b4e3692c3cca5'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 'a9b619a106bd367f5ed44d3c8bddf4980396d9e646443f85cc06b4f2d278e42b'
    'pt-BR'
  end

  language 'ru' do
    sha256 '8bb2a3c7c1121a9fd6e5fc1998956ddf22994ba550c4e16cb0a10f207e6cb8c9'
    'ru'
  end

  language 'uk' do
    sha256 '63bfe4f66b00663b64f56c46ae9467f976741dbb8d68f0c38d88d5818367c115'
    'uk'
  end

  language 'zh-TW' do
    sha256 'fbce2fcd11e4ebf823072a99e8907558b316100c70e4569445779a1ab2b1a49a'
    'zh-TW'
  end

  language 'zh' do
    sha256 '358c5f619c8ec7a0869cbbc00afb37029674f47a32c96a1d7cdddf4d1490dbcf'
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
