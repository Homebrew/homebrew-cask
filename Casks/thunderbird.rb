cask 'thunderbird' do
  version '60.7.2'

  language 'cs' do
    sha256 '1a08ba2673eae88b28bf4fd5111c4af14a29cef31cac7ba91510662100aa7777'
    'cs'
  end

  language 'de' do
    sha256 'c90f9b4bc44207b4769d440b1e309e23e7db5b37217713e07cdf73fc3e9531da'
    'de'
  end

  language 'en-GB' do
    sha256 '4bc8ee7232a30c9941ca08df3842f109106646cca6c79ab6c4d410b669da770e'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '66d937ee3db5d06d7982046e24f9340d60612889c15ef98b224726824376f910'
    'en-US'
  end

  language 'fr' do
    sha256 '1482e6c764f5857f23610b274ada54626a98fbb7a747623440d4028abe801085'
    'fr'
  end

  language 'gl' do
    sha256 'cc8b175c69d7e0c17795bcf259f8a04f5ca4dbda19a2ac9460fd85490ac4c6a4'
    'gl'
  end

  language 'it' do
    sha256 '5e5ddc846a6152139147f064e62a2ca4f5a15f9810e3d717533062d881a0c3af'
    'it'
  end

  language 'ja' do
    sha256 'e09a928b4da3712cdb211ba86f8fef2df4d7904a13bc2e518208a13fe7b6dff0'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'a0b7f70c76306f674e08fbc487a0609d841fcce19e28d4df37325713e387962f'
    'nl'
  end

  language 'pl' do
    sha256 '4e77c5017535a0ad61c208753f13b0443cfa0cc7179a0c188c2ff2277188427d'
    'pl'
  end

  language 'pt' do
    sha256 '96ee4cabfaf55a860ce1cfde64a2862ca2f6f224ce868d106afcf6da5760b8b2'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '5732ccdc1cdb8a73cfbe230f2827d26e3e191980817dddd796e44ec5ad15cac3'
    'pt-BR'
  end

  language 'ru' do
    sha256 '7ae77e285eccac3a05d126aa3b03c85f3b0f09a1eedfb12c823fb3b9c7666420'
    'ru'
  end

  language 'uk' do
    sha256 'dbd509d572e35c32b47f852ba5d380cd048deb577c0c954537dd11e7ad787c9c'
    'uk'
  end

  language 'zh-TW' do
    sha256 '74746c1b732ff0a5bed72ad66470920a3c7a1c8c6df282e96e59c15f3c239386'
    'zh-TW'
  end

  language 'zh' do
    sha256 'fd73b93ee416cfe8b1e33557be018b7b9a8fed267aff11ca688001b467c2b00c'
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
