cask 'thunderbird' do
  version '52.1.1'

  language 'de' do
    sha256 '96fd47123654cca9cfc0059161fca2d2f3295569b8b5e09a41bba0635414bba6'
    'de'
  end

  language 'en-GB' do
    sha256 '6d6d8678b9943c36804384ca10a431676bc3d5c48d55138ac3c49933465750fb'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'b5738a4a7dc8dccd70887a039741264ceb8a97e14c8e161e984cb917e52c9293'
    'en-US'
  end

  language 'fr' do
    sha256 'abd4cdc48410553cd6ac6728b3804a4f6460286f40d2fde96a81395b74a1257a'
    'fr'
  end

  language 'gl' do
    sha256 '71c3f40ab1c5e3ad7115c80d550d0caf7d2f6b186e5086c0ba9b32c12e326246'
    'gl'
  end

  language 'it' do
    sha256 '62028555b0ab23daf1f82ce3d1c09688349c9ae1c156141405f28f80a3bb6f92'
    'it'
  end

  language 'ja' do
    sha256 'd6225a32315c1bbccc282586daefe99f2a8ac1253422f533f33f068134b6b849'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '5b5b51d64e5a1730e005d6cd459182464836636dd897d32ce28c5f00f2441ef7'
    'nl'
  end

  language 'pl' do
    sha256 '8505e357efcb2b600a70cfc07a03c7028be5fd3fc3a1fc93ae828626e83a9ebd'
    'pl'
  end

  language 'pt' do
    sha256 'b97fdbbe3f77c9a040909c00c50caf147b9418c56a083472657dca5d2cc96abc'
    'pt-BR'
  end

  language 'ru' do
    sha256 'c368cb487338c17951575b1bdaf2a7abc928df328e025ba01055352c095ac5d9'
    'ru'
  end

  language 'uk' do
    sha256 '980b10f79a611ad20672d717d0d82039826a04a3f1a29a1aaa88e75581203369'
    'uk'
  end

  language 'zh-TW' do
    sha256 '0bb4772fe3eb7573c7ece1a90681211c4dce1e02ab2a5469c1ac50c9c1372206'
    'zh-TW'
  end

  language 'zh' do
    sha256 '6460a65952cb705c863b8bb4e2082d0b91bc5a6f41ef603d745cfbf97901ef14'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Thunderbird/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '6cc4c4d87cf347ebe2b41d43cfb550c455bd9fbb9fa6fb3184213ff4eb034d6c'
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
