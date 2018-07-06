cask 'world-of-tanks' do
  version '2.0.21'

  # wot.gcdn.co was verified as official when first introduced to the cask
  language 'AT', 'BE', 'BG', 'CH', 'CZ', 'DE', 'DK', 'ES', 'FI', 'FR', 'GB', 'GR', 'HR', 'HU', 'IE', 'IT', 'LI', 'LT', 'LV', 'NL', 'NO', 'PL', 'PT', 'RO', 'RS', 'SE', 'SI', 'SK', 'TR' do
    sha256 'ea319273e269e1554439d5ac2cc1e189b685f6c619444bb855f3358b68596008'

    url 'https://wot.gcdn.co/eu/files/osx/worldoftanks_eu.dmg'
    appcast 'https://wot.gcdn.co/eu/files/osx/WoT_OSX_update_eu.xml'
    homepage 'https://worldoftanks.eu/'
  end

  language 'CA', 'US', default: true do
    sha256 '133b3f3271eb957a4eea59cd59a6f79d2c4376a4297a980d8c9232ae9419a995'

    url 'https://wot.gcdn.co/us/files/osx/worldoftanks_na.dmg'
    appcast 'https://wot.gcdn.co/us/files/osx/WoT_OSX_update_na.xml'
    homepage 'https://worldoftanks.com/'
  end

  language 'CN', 'ID', 'IN', 'JP', 'KR', 'PH', 'SG', 'TH', 'TW', 'VN' do
    sha256 'c394a6a9a96914d72a035ccaa061840755f697099a5ff79417e3a5a213f060a2'

    url 'https://wot.gcdn.co/sea/files/osx/worldoftanks_asia.dmg'
    appcast 'https://wot.gcdn.co/sea/files/osx/WoT_OSX_update_asia.xml'
    homepage 'https://worldoftanks.asia/'
  end

  language 'RU' do
    sha256 '02d817184f4fd6268c59d68fc7d9ca039262d1fce997df14b5fdabb202dbaf7f'

    url 'https://wot.gcdn.co/ru/files/osx/worldoftanks_ru.dmg'
    appcast 'https://wot.gcdn.co/ru/files/osx/WoT_OSX_update_ru.xml'
    homepage 'https://worldoftanks.ru/'
  end

  name 'World of Tanks'

  app 'World of Tanks.app'

  zap trash: [
               '~/Documents/World_of_Tanks',
               '~/Library/Application Support/World of Tanks',
               '~/Library/Saved Application State/com.codeweavers.worldoftanks.savedState',
             ]
end
