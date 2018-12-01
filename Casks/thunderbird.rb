cask 'thunderbird' do
  version '60.3.2'

  language 'cs' do
    sha256 '3bc244572a4aa48493dc2e6c54c3798bde9065e40d59f16f2b799b4501f5f4fe'
    'cs'
  end

  language 'de' do
    sha256 '7022e7e23818b8b7133d9471504f7283233e3b1a33543fb61f66f7af6f18ed7d'
    'de'
  end

  language 'en-GB' do
    sha256 'bfa657df0e53a781c701e44a20f87e7578c089c702535bf9d4d89ac4338df25a'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '28005d58a70970d7a2546ce6c2e1dfa018d966d44349481c0d9451aefb9c0528'
    'en-US'
  end

  language 'fr' do
    sha256 '71d3d4d7d94744d3834fc9b2f0f3740e370ba889c698b5ef8be793f783e6f12b'
    'fr'
  end

  language 'gl' do
    sha256 '783d73ee0f3c5897d7aa9ae97c2d15d91a70f99c01533c730d1f6ff31158ebc1'
    'gl'
  end

  language 'it' do
    sha256 '39b4c26b0a3ae77ad5672ffaef2bda64f0c8a3cc9bbb4f81bc5c6c69ccc5a2bb'
    'it'
  end

  language 'ja' do
    sha256 '3023c4ea8baaf59ad306f4dff0a031ae46b4f830ad098a41a07f8b6e989ef9d4'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '85a3ee274f721af0c7611f4541b4f808baf4efbc877fc13dbc945c16dc854af6'
    'nl'
  end

  language 'pl' do
    sha256 'b15f896a4ab52f4ab328585d7cfbe5f9c8c4f4ba77cf957c4282421833d2f4de'
    'pl'
  end

  language 'pt' do
    sha256 'c229449f46cde8629f4b000563543601fac5c415805d8adf067c29aa8682a922'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '51ff2fe9502fa891bf619322437fc24a8365e4918ac0bd1005c5ac8eb32a04de'
    'pt-BR'
  end

  language 'ru' do
    sha256 'e6f4ec0132248677ac0b2232d7182670fc595dc01bae267bb232ce3c77ec4b9d'
    'ru'
  end

  language 'uk' do
    sha256 'c6442eb7ed1a84e516feef2ef37d24b10e4101e3e482813447deb0a59e94e68b'
    'uk'
  end

  language 'zh-TW' do
    sha256 'dcd32a8fec4b11a5dc0c8a3a36857a4be88bba6b191a1002e3c2aad5529229f4'
    'zh-TW'
  end

  language 'zh' do
    sha256 'b83e673aba3f4d4b73f01186f5d912811f710161b152013cd5c450dcad46dfe2'
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
