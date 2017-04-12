cask 'thunderbird' do
  version '52.0'

  language 'de' do
    sha256 'b8916c2f4a3e59ccd35aafa1b2e66a49c483871b0e250b8a80cc343a6ed8203d'
    'de'
  end

  language 'en-GB' do
    sha256 'd68263ecd89f2f8319ff76653fa7941cc95bb61921a5db952f6f2aff26dfc543'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '04a8eac426c6ff6139d662f957104ab75d8c2aef5f99d086e17b729da19dbab5'
    'en-US'
  end

  language 'fr' do
    sha256 'c1452994e7c11c08998c3f8048f9e7e3ba6b993158431f8ba7c5b5e8e4a3c388'
    'fr'
  end

  language 'gl' do
    sha256 '336a71d3468c6f56df9ec0f2d94f369ba2781572987bd6bc127f258d729f9f77'
    'gl'
  end

  language 'it' do
    sha256 'a70a889189c23e632a6b42c755e7216097ad08024fdcd4aa6ba7611f4f36f4d5'
    'it'
  end

  language 'ja' do
    sha256 '94df6b14a6e2ae24f1b120fb24fb9b4408bac155f1254b457eeaffb5660a5ade'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '51cc151f6714ab3ef389df0e922ecef63660e3ce14cfca370e1ae72cb51153fc'
    'nl'
  end

  language 'pl' do
    sha256 '363b6bbd8acc894eab73ebb3c32caa650b48d2408b8586d79b3a577d20e5186d'
    'pl'
  end

  language 'pt' do
    sha256 '31af8045a9704fe4058a96f8836c6dab675a72663544a0858b3b9fc094f9935c'
    'pt-BR'
  end

  language 'ru' do
    sha256 '7b53d9938e9cf6f9d8065cbb189646feab01bcabb64bf62941fa9994859c5291'
    'ru'
  end

  language 'uk' do
    sha256 '4fa9686d29d795042a98e217d940dede331aa893507c35d97f53047f58257445'
    'uk'
  end

  language 'zh-TW' do
    sha256 '218a669f1a12e97e61bed03d3ae4a108847d196ba74dd784598d7b87152d1ac6'
    'zh-TW'
  end

  language 'zh' do
    sha256 '29fe5ff75045dcf36af2fdc5dc6b70b8e12d8d68a1b23a0d06d50b9bc0acc3c9'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Thunderbird/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: 'ab9ff082b9b20b709f160e02b557add67dce3c12a1b8b9e67b41f2fadfb72163'
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
