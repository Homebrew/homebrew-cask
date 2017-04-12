cask 'world-of-tanks' do
  version '2.0.3'

  # wot.gcdn.co was verified as official when first introduced to the cask
  language 'AT', 'BE', 'BG', 'CH', 'CZ', 'DE', 'DK', 'ES', 'FI', 'FR', 'GB', 'GR', 'HR', 'HU', 'IE', 'IT', 'LI', 'LT', 'LV', 'NL', 'NO', 'PL', 'PT', 'RO', 'RS', 'SE', 'SI', 'SK', 'TR' do
    sha256 '7ed0a6a1fbe879624b3d3db54e2579ca831aee1e21e6809e95159402f0a9ec87'

    url 'https://wot.gcdn.co/eu/files/osx/worldoftanks_eu.dmg'
    appcast 'https://wot.gcdn.co/eu/files/osx/WoT_OSX_update_eu.xml',
            checkpoint: '6849645fa562dfed3a799d9c404555a780589334f003881c64a3d33ab26b7c05'
    homepage 'http://worldoftanks.eu/'
  end

  language 'CA', 'US', default: true do
    sha256 'ba77c92d2cb67b8fe9357aed3446a1fabda87eaa367588e52d7beca179f80e32'

    url 'https://wot.gcdn.co/us/files/osx/worldoftanks_na.dmg'
    appcast 'https://wot.gcdn.co/us/files/osx/WoT_OSX_update_na.xml',
            checkpoint: '30f29fc54bc10b9856715272494655c396d24cc4d26acce12d25ec36452892b7'
    homepage 'http://worldoftanks.com/'
  end

  language 'CN', 'ID', 'IN', 'JP', 'KR', 'PH', 'SG', 'TH', 'TW', 'VN' do
    sha256 'ec059db30cb798642c7726ebab47c575d105f6ebcfa7aca1902123b3bc1f7910'

    url 'https://wot.gcdn.co/sea/files/osx/worldoftanks_asia.dmg'
    appcast 'https://wot.gcdn.co/sea/files/osx/WoT_OSX_update_asia.xml',
            checkpoint: '46655913b1e126c9c855163a094359e4c647d7b9f854f162de50d28970e90572'
    homepage 'http://worldoftanks.asia/'
  end

  language 'RU' do
    sha256 '8ea59d71e662a00463dc391b444e7eaa736c1fae454f0418ca3c2e1f13e3cc12'

    url 'https://wot.gcdn.co/ru/files/osx/worldoftanks_ru.dmg'
    appcast 'https://wot.gcdn.co/ru/files/osx/WoT_OSX_update_ru.xml',
            checkpoint: '789e6cf5e5ae125eb247c75fec0a887a3aa927c652696987fe6c2481c9bd29fa'
    homepage 'http://worldoftanks.ru/'
  end

  name 'World of Tanks'

  app 'World of Tanks.app'

  zap trash: '~/Documents/World_of_Tanks'
end
