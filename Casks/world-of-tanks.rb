cask 'world-of-tanks' do
  version '2.0.28'

  # wot.gcdn.co was verified as official when first introduced to the cask
  language 'AT', 'BG', 'CH', 'CZ', 'DE', 'DK', 'ES', 'FI', 'FR', 'GB', 'GR', 'HR', 'HU', 'IE', 'IT', 'LI', 'LT', 'LV', 'NL', 'NO', 'PL', 'PT', 'RO', 'RS', 'SE', 'SI', 'SK', 'TR' do
    sha256 '48c916f90eb16a1821480e23c3bf3e054767e065370a9ac3927bc0f44686e89a'

    url 'https://wot.gcdn.co/eu/files/osx/worldoftanks_eu.dmg'
    appcast 'https://wot.gcdn.co/eu/files/osx/WoT_OSX_update_eu.xml'
    homepage 'https://worldoftanks.eu/'
  end

  language 'CA', 'US', default: true do
    sha256 '23c2e97b89eeabd45aa5a6250e87b15c9f17757271f615e013453fea3949ac60'

    url 'https://wot.gcdn.co/us/files/osx/worldoftanks_na.dmg'
    appcast 'https://wot.gcdn.co/us/files/osx/WoT_OSX_update_na.xml'
    homepage 'https://worldoftanks.com/'
  end

  language 'CN', 'ID', 'IN', 'JP', 'KR', 'PH', 'SG', 'TH', 'TW', 'VN' do
    sha256 '5947d1081a07fadc9e3eb1741fead59a98b6e89c86a2b3fb5356cef77e83e6ca'

    url 'https://wot.gcdn.co/sea/files/osx/worldoftanks_asia.dmg'
    appcast 'https://wot.gcdn.co/sea/files/osx/WoT_OSX_update_asia.xml'
    homepage 'https://worldoftanks.asia/'
  end

  language 'AZ', 'BE', 'HY', 'KK', 'KY', 'RU', 'UK', 'UZ', 'TG' do
    sha256 'fffe998183e552560ff37eae77629441ad17cbe6c9ed1af692ad0542a659d04f'

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
