cask 'world-of-tanks' do
  version '2.0.21'

  # wot.gcdn.co was verified as official when first introduced to the cask
  language 'AT', 'BE', 'BG', 'CH', 'CZ', 'DE', 'DK', 'ES', 'FI', 'FR', 'GB', 'GR', 'HR', 'HU', 'IE', 'IT', 'LI', 'LT', 'LV', 'NL', 'NO', 'PL', 'PT', 'RO', 'RS', 'SE', 'SI', 'SK', 'TR' do
    sha256 'ea319273e269e1554439d5ac2cc1e189b685f6c619444bb855f3358b68596008'

    url 'https://wot.gcdn.co/eu/files/osx/worldoftanks_eu.dmg'
    appcast 'https://wot.gcdn.co/eu/files/osx/WoT_OSX_update_eu.xml',
            checkpoint: '36652a290477ae5a116f3dd6fd0f704a9d2c1f22bb097c89ac60f6eec9001f8b'
    homepage 'https://worldoftanks.eu/'
  end

  language 'CA', 'US', default: true do
    sha256 '133b3f3271eb957a4eea59cd59a6f79d2c4376a4297a980d8c9232ae9419a995'

    url 'https://wot.gcdn.co/us/files/osx/worldoftanks_na.dmg'
    appcast 'https://wot.gcdn.co/us/files/osx/WoT_OSX_update_na.xml',
            checkpoint: 'fff1359320235ec7d4ce2592c5147e6c360ce350d646eaf203c32d3a2df70681'
    homepage 'https://worldoftanks.com/'
  end

  language 'CN', 'ID', 'IN', 'JP', 'KR', 'PH', 'SG', 'TH', 'TW', 'VN' do
    sha256 'c394a6a9a96914d72a035ccaa061840755f697099a5ff79417e3a5a213f060a2'

    url 'https://wot.gcdn.co/sea/files/osx/worldoftanks_asia.dmg'
    appcast 'https://wot.gcdn.co/sea/files/osx/WoT_OSX_update_asia.xml',
            checkpoint: '8e510a79f3ee206aa1e3d108704bade91c31caa54f7f2b42ef6685674d2db623'
    homepage 'https://worldoftanks.asia/'
  end

  language 'RU' do
    sha256 '02d817184f4fd6268c59d68fc7d9ca039262d1fce997df14b5fdabb202dbaf7f'

    url 'https://wot.gcdn.co/ru/files/osx/worldoftanks_ru.dmg'
    appcast 'https://wot.gcdn.co/ru/files/osx/WoT_OSX_update_ru.xml',
            checkpoint: 'ace9d07163b638ec1f4caa699eff3e87643db367c090c393265cebd21e9f58bf'
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
