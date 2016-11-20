cask 'thunderbird' do
  version '45.5.0'

  language 'de' do
    sha256 '7099dedaff7a0aa46a5dcf13e5162c3407a800a0e7a9635b815d21626a69aa3a'
    'de'
  end

  language 'en', default: true do
    sha256 '51875ccd62987560681e94e4ee84a26ed00a652defebda2d60147bf2400f5b13'
    'en-US'
  end

  language 'fr' do
    sha256 '213d15053dcab163a757219dc3ecad38c9055f32c829c8f173f8aeeb9df9ac6d'
    'fr'
  end

  language 'gl' do
    sha256 'e21c53c742a3d285ab65e519e93d01d6582da1c17bf4daff1f0630bf00719dc7'
    'gl'
  end

  language 'it' do
    sha256 '9bb9b62448263ff79d7d465bca7ec6f0b19b976ee90805986b24ff5e651512db'
    'it'
  end

  language 'ja' do
    sha256 '34da9c96bdbe6519182eefd19c40cba86a789816979f5a2c51fc51382c04fd5e'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '50a8b15df9d27e897b1430455dc3800844dc9da50666b926d077e75b0d07948d'
    'nl'
  end

  language 'pt' do
    sha256 'd03164442fd9a64c7a8132866685bce2f034d83d5e6559e66204efe8b6a748b5'
    'pt-BR'
  end

  language 'ru' do
    sha256 '1de9c000ce78403ee5e105714c5f3fa40c446faae3dc21db9d86c092f97ae6ec'
    'ru'
  end

  language 'uk' do
    sha256 '3fce3e025ff4c764f19435727d35eb2e841746734a1de884aa2c3f5893ac9da5'
    'uk'
  end

  language 'zh' do
    sha256 '10f4c0be0efb69d7789dd5798484905b1ebde9151c476f690fde0333df96566c'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Thunderbird/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '8a1808dfcba1b3944c707c1e291845f5ae30e71898e0de03333338cafdda2b95'
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/thunderbird/'

  app 'Thunderbird.app'

  zap delete: [
                '~/Library/Thunderbird',
                '~/Library/Caches/Thunderbird',
                '~/Library/Saved Application State/org.mozilla.thunderbird.savedState',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl',
              ]
end
