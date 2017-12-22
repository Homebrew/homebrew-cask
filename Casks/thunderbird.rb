cask 'thunderbird' do
  version '52.5.0'

  language 'cs' do
    sha256 '0fc91d516cf2bfefc4877c96d086049b649095f6452fca56946762cd120c4010'
    'cs'
  end

  language 'de' do
    sha256 '106dc6d09f96b692a7c9b2112fcb875900a4becb456ec2a9f043588ccd807e74'
    'de'
  end

  language 'en-GB' do
    sha256 '338f0de8292490341231973c6781c246638d322f3d8fb328417b8d9417efa64c'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '98437d8c7fc30d67fb29e5d891ec47c41181abd12b9b809d48506ff16a769ba0'
    'en-US'
  end

  language 'fr' do
    sha256 '8a0634729a35eb0284148ba49437775083627fcda6a96de2b6732b1c2c4cbabd'
    'fr'
  end

  language 'gl' do
    sha256 '01c79487f3c309b27371f09b909712599afc2d7fabfb257318105e0f2e893443'
    'gl'
  end

  language 'it' do
    sha256 '21ae030bb5e89d634f4c8d40014fe9f7624e752856adc3ff35ec1189c3756079'
    'it'
  end

  language 'ja' do
    sha256 '846b8fa8c4a3f509ae8fe587e37245cffccae09876a62b766edcb69db09a7897'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '8c8fea5559f5bf852b634ae7e1f35c1102f7c58f2c08cfebbf66e096fdfd9088'
    'nl'
  end

  language 'pl' do
    sha256 '8ab9235cd9cc86cd989161c7d2e365a0b5dc234b6ac80e2eb3661f201b122ea4'
    'pl'
  end

  language 'pt' do
    sha256 'ac77e37151fb35bf90c92330950a8b67b4d789b28d2df76d9fef04d68c191763'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '6318bf0448a6a81b685b88fb7af8d2af4e309ae7f3527dffe1f15be07b805230'
    'pt-BR'
  end

  language 'ru' do
    sha256 '6b5bc7831b394f8af18ad15034d02bf2050e9646d467a4e210cf023e32ee2bdc'
    'ru'
  end

  language 'uk' do
    sha256 'f2af0dbbb31edc04531862c559610df0405f618c061b77b4441f7dec96547c7d'
    'uk'
  end

  language 'zh-TW' do
    sha256 'aae9fa5cc0e19e0e7c85ffca0804f21eb96bb70c4f7f1c95d27937082e181625'
    'zh-TW'
  end

  language 'zh' do
    sha256 'c9a6ea4359dbaa9240cebae8cfdb127d6175ec292145bbca56dc7dead8d4efa4'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Thunderbird/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: 'dddf138345d902d490e3cdf0adb32c89d6cd3f82a68e5cb2587bd8fa0d729711'
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/thunderbird/'

  auto_updates true

  app 'Thunderbird.app'

  zap trash: [
               '~/Library/Thunderbird',
               '~/Library/Caches/Thunderbird',
               '~/Library/Saved Application State/org.mozilla.thunderbird.savedState',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*',
             ]
end
