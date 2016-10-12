cask 'world-of-tanks' do
  version '1.0.34'

  # wot.gcdn.co was verified as official when first introduced to the cask
  language 'AT', 'BE', 'BG', 'CH', 'CZ', 'DE', 'DK', 'ES', 'FI', 'FR', 'GB', 'GR', 'HR', 'HU', 'IE', 'IT', 'LI', 'LT', 'LV', 'NL', 'NO', 'PL', 'PT', 'RO', 'RS', 'SE', 'SI', 'SK', 'TR' do
    sha256 '6c2a9c2ca507e5730a0494571ad58952bf655c8b3a9e963d4fcc5cdf6af7ab30'

    url 'https://wot.gcdn.co/eu/files/osx/worldoftanks_eu.dmg'
    appcast 'https://wot.gcdn.co/eu/files/osx/WoT_OSX_update_eu.xml',
            checkpoint: '7a151d7884cc87d0a9d1dad524c7ca3dbf1da571183d971d7426e7a3e443bd72'
    homepage 'https://worldoftanks.eu/'
  end

  language 'CA', 'US', default: true do
    sha256 '38485f2c422f18e97403b2761082e38700adfa06eba92ec7f1b6e30acd07ba42'

    url 'https://wot.gcdn.co/us/files/osx/worldoftanks_na.dmg'
    appcast 'https://wot.gcdn.co/us/files/osx/WoT_OSX_update_na.xml',
            checkpoint: '1e3ca625cca19f523265c07c2f2beef750b2b4dc22446d75ecb15e67964a5847'
    homepage 'https://worldoftanks.com/'
  end

  language 'CN', 'ID', 'IN', 'JP', 'PH', 'SG', 'TH', 'TW', 'VN' do
    sha256 'cd1730d62a6d6c2289074c53d11276db4cdc4a4c03b9d2526335ed25e5930192'

    url 'https://wot.gcdn.co/sea/files/osx/worldoftanks_asia.dmg'
    appcast 'https://wot.gcdn.co/sea/files/osx/WoT_OSX_update_asia.xml',
            checkpoint: '0b4bad256188ed484b8e946e5ef80b74fadc717b39b1fdc747f2c95e938077bb'
    homepage 'https://worldoftanks.asia/'
  end

  language 'KR' do
    sha256 '9f57a2ffc0e5a7a76bd59438be5f73505f2508adf4b5ea4d119a0cf9ef453b2f'

    url 'https://wot.gcdn.co/kr/files/osx/worldoftanks_kr.dmg'
    appcast 'https://wot.gcdn.co/kr/files/osx/WoT_OSX_update_kr.xml',
            checkpoint: '00fd089c9f73e92fa45a3b7f750a28a5479f0244e06132811ca7140814057833'
    homepage 'https://worldoftanks.kr/'
  end

  language 'RU' do
    sha256 '50c3892a49a19beeb5bf7b08bccbf94b657180e21ca5c4d2958a241f63370e01'

    url 'https://wot.gcdn.co/ru/files/osx/worldoftanks_ru.dmg'
    appcast 'https://wot.gcdn.co/ru/files/osx/WoT_OSX_update_ru.xml',
            checkpoint: '482344ba173148844d943a0120764a5295fb050d4f321d7e4c484cd97f15cabe'
    homepage 'https://worldoftanks.ru/'
  end

  name 'World of Tanks'

  app 'World of Tanks.app'

  zap trash: '~/Documents/World_of_Tanks'
end
