cask 'thunderbird' do
  version '60.3.0'

  language 'cs' do
    sha256 'c2e8140107f12b8c075acae8e53f4b4f4a1f861082925483c7115c6300e43279'
    'cs'
  end

  language 'de' do
    sha256 '72831ec8955a45b19b440b774211ad54807c8cac654e53d373eee15eaf92eaf4'
    'de'
  end

  language 'en-GB' do
    sha256 '6f03c7fd79c6dba164d650ce32ea2624e4363a3b5f391daee0679b9dd27cfc4d'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'f6eafcbddc6731dcf38f3c880d9a711570cd3c87556e22b6f5795594b9ad2a8f'
    'en-US'
  end

  language 'fr' do
    sha256 'fe7ffea7a8553670c86037656fd82c7e91160f5145ab68164553f7a3b56ca089'
    'fr'
  end

  language 'gl' do
    sha256 '992343f257e5010d7b90f2b75ee4fd7906a9755af2705ab07f1095f742d6688d'
    'gl'
  end

  language 'it' do
    sha256 '215a9e426de61485ee93bc74dad58deaf534c9108e99aada3caf472f06998fc8'
    'it'
  end

  language 'ja' do
    sha256 '7f73e1111d5c1a5cc169138050bf57bfa2a2a650a7cfca0a63459622c4cd3a7e'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'f83699f8fd432b80c868acdda598ef421ef51745692a6e3cb1c0fd810933671e'
    'nl'
  end

  language 'pl' do
    sha256 '1dee2fc0b9d06ee7fa1265372ecef96c9ef547031c82f83e54a87c6ae6c5f7f0'
    'pl'
  end

  language 'pt' do
    sha256 '7249205b77eef86150bce16508dfbbffe09a0bb7e1aee28b4e2debbfc287eb55'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 'f28a237eb1daa515fd3d69d65d5047e6380636a497d2000e1e20409d1826b4ee'
    'pt-BR'
  end

  language 'ru' do
    sha256 'fe88bc519af8701f31b22684668fec19a524f97b969fa0e1822f6986bad83d3a'
    'ru'
  end

  language 'uk' do
    sha256 '25f63686a31f62c5448ad9d32efeb1677ad87b2216094f5573611476030c534d'
    'uk'
  end

  language 'zh-TW' do
    sha256 '455f4904638db899f058dd7bc0e5cad83157dfe61f1274f96501b0c3364aba6c'
    'zh-TW'
  end

  language 'zh' do
    sha256 '55a74a342745a5ace5b5292a4e3a0a8cd6f22ccf3d9c4da59ef314c112ed8b60'
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
