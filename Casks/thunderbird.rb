cask 'thunderbird' do
  version '60.7.0'

  language 'cs' do
    sha256 '28adf1902dfb994bf440449c6561ede3b51aa7850c8a199114199535340d4902'
    'cs'
  end

  language 'de' do
    sha256 'd175cc439fc0810d6c220780e2ac22f189a8abdf5c6dd8a5e99a48534e97684e'
    'de'
  end

  language 'en-GB' do
    sha256 '4f2f43d9974a8e58ca853dcba5b407cd7d45ff9ca5950543c543d30df78cacbb'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '72d96554eef5975522cb5b88e0f749a9922cb8db5e005b9f3056b61c42e16704'
    'en-US'
  end

  language 'fr' do
    sha256 '2f99f134c08febb7ef0a6f3c9c6ec852af968cf7770396dcdc12578db21958c6'
    'fr'
  end

  language 'gl' do
    sha256 'c0ac6de8e397663a2b2b1a3e703fc4c7131d10fe7ce9ec1da4903008f4839ed9'
    'gl'
  end

  language 'it' do
    sha256 '8250c3101ef8fe98e8176db34d14b82567698750aba578604f21c7a3c27be85e'
    'it'
  end

  language 'ja' do
    sha256 'd430a7aa2e8a33abeb77f3228f5951a6a8fce83367dc33cb8011c182b5365ad0'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'a77ab61a51fa18d54497089e363fff9955b0badb0e4fe030a3287905060179ec'
    'nl'
  end

  language 'pl' do
    sha256 'b049eaa95c498da2c9fc319dfde05c125a73e4483c373e2f34f83e4548f61df1'
    'pl'
  end

  language 'pt' do
    sha256 '40fd186532192b5dc277b4d4211a084df7e82458ed35447064bc8dbd1d3ff3e3'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '7f04a44d9bc4ce1180033d08151a846a6c8498e77dba43b5e941a3017dddccfa'
    'pt-BR'
  end

  language 'ru' do
    sha256 '392b8c82ce1f7c2724be72cabb38018eaf73f22196210abcfaea26e6f7ae84b5'
    'ru'
  end

  language 'uk' do
    sha256 '88cf4ab98ec885793c35016c6805a34795d72342d532370e7c59e0aed3877693'
    'uk'
  end

  language 'zh-TW' do
    sha256 'd3aa020055a172cdc5eb58d6552f1156b70b6f2a0d83aef783574165f2c2b9b6'
    'zh-TW'
  end

  language 'zh' do
    sha256 '50b6a7692279c17a3c4cca6bf2f4bdbc0349589ab1ef12659c59d0c7cd881730'
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
