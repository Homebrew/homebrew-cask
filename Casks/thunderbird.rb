cask 'thunderbird' do
  version '60.5.3'

  language 'cs' do
    sha256 '079cf78a4653424711e137626738b616e51181900970d67783943a632e0156f1'
    'cs'
  end

  language 'de' do
    sha256 '78d089134856e2d17afee6d555dfb3f4806561121d3edf68fc47550c1b8df5c2'
    'de'
  end

  language 'en-GB' do
    sha256 'ee870406dcc168fd0ae0a71140d28c0dc8a0028992c749cb38d1c900dab90945'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '071023810b2f74f6d8c91c48567646aea406de6301371a6330b701ed5da84977'
    'en-US'
  end

  language 'fr' do
    sha256 '2bb5248319da98ebf5930fad9645c3a4a40cd183c57be05d77efb63162e0b10d'
    'fr'
  end

  language 'gl' do
    sha256 '7ba5c56c84b21a1576c5a7061602afcda50fd268f19f8b8d3e2a5b6c5d16328f'
    'gl'
  end

  language 'it' do
    sha256 '1fdd72b05542be35792fe63f6b9e9c015cd49b8ad56486e2c9f2ba3d88f74e5b'
    'it'
  end

  language 'ja' do
    sha256 '02e51f33d7aa94b31847e8b755fc7f722bae457c3dff4a4a47d7ec6afbf703f4'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'cda7e9dfab50b774339db8f23b37e7c1fdcb8529d1f25c1eb7921b66623dcb4e'
    'nl'
  end

  language 'pl' do
    sha256 '34a8aa558e90921d350dc64a2469709ef91b856b3168c600d93c968f21235df6'
    'pl'
  end

  language 'pt' do
    sha256 'ec4a15e559fafb0b88c8b6591f844ad5a5778ec5bbd368fa066c7b1fe2c65d0e'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 'f07dd751d61f13615fa759472640380a092ae649365aec98565871ce9b88fe91'
    'pt-BR'
  end

  language 'ru' do
    sha256 'e587a06510b1e278417505b0aee67f5ae535f942ff89e43f66f185a19b1e14c2'
    'ru'
  end

  language 'uk' do
    sha256 '5362fba7061f689212168c14ced0ce128535091d2619296a9f89d6d0ab6d2b8c'
    'uk'
  end

  language 'zh-TW' do
    sha256 '15cd4504f448092dd7b3b293f0a3b519e0e0cdb290ec61e6cd98cf2858b31fca'
    'zh-TW'
  end

  language 'zh' do
    sha256 '727aadd0ba0697c15ded0b88be4122e78e6d7d6356a69a64831a50593660c9eb'
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
