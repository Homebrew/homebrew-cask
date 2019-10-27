cask 'thunderbird' do
  version '68.2.0'

  language 'cs' do
    sha256 '2c4a184362fc2e3eff946b7489f4b2498ec143e21baa12617295e59ba329a1a6'
    'cs'
  end

  language 'de' do
    sha256 '734b91d07a3fb4db2ec24eba69c3f2209f33008c1685fe168dfd5426acbe481a'
    'de'
  end

  language 'en-GB' do
    sha256 '6699b9eb5bafd332ea30e9283b70b0112fbb0d40aea36d6b26685f6a80c0eb24'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '7f7c922dc1c1bb47cf76389e27d733bcbb90c4d6ef4b603177409ab24c92a1fc'
    'en-US'
  end

  language 'fr' do
    sha256 '6202886d7eee095bfe30359bbb3a3727c1a4311e962aa99fd6c51e436b647c04'
    'fr'
  end

  language 'gl' do
    sha256 'fa503f526dacb4e18cacead86271c3c70d0f66bcba372f30d774a672ee638218'
    'gl'
  end

  language 'it' do
    sha256 '5537fffe12fc3a7b94fd6a7ec634a99d63760fd704264ca16d2484558c57ec49'
    'it'
  end

  language 'ja' do
    sha256 '374d9c5ea61632a4888052696902851d156b01a6a22dfadeae45382de716fee6'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '97e92eaef8f0c57830c1d35a0d2f2db8180ead77807a114ef497ed2d52e7994b'
    'nl'
  end

  language 'pl' do
    sha256 '367d607333904f7552574f14f027c159a96e8086945a2d600da28d79b7942e8d'
    'pl'
  end

  language 'pt' do
    sha256 '12b584b2e5ae76117ca02002311035d15dc9972ec4f4e138b674637b731d46e1'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '4fea89eff0d1a540ba22932a1ead9b72272c21c6ab88028ba08ac22d36e8c53f'
    'pt-BR'
  end

  language 'ru' do
    sha256 'c0dcfad208f0dbedf91207c0be9165a3144586e692a7c3812b1526f50110ad5e'
    'ru'
  end

  language 'uk' do
    sha256 '2639bc77b8d315a7ef032ee89709a69a51d2989cb2297103fee0a8dbd5d9248b'
    'uk'
  end

  language 'zh-TW' do
    sha256 '7599abd91831a98b85d90ca71afe00d6689f75bcac3695132c14de7dc175842c'
    'zh-TW'
  end

  language 'zh' do
    sha256 'e15a9d46eb012b7b12bd383939387591bf56ef7097d4fb7b71032d864cdb2041'
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
