cask 'world-of-tanks' do
  version '1.0.37'

  # wot.gcdn.co was verified as official when first introduced to the cask
  language 'AT', 'BE', 'BG', 'CH', 'CZ', 'DE', 'DK', 'ES', 'FI', 'FR', 'GB', 'GR', 'HR', 'HU', 'IE', 'IT', 'LI', 'LT', 'LV', 'NL', 'NO', 'PL', 'PT', 'RO', 'RS', 'SE', 'SI', 'SK', 'TR' do
    sha256 '7caed20a567676b17d5518dfb6572683032b23b2060e919e77c0f6fd3d2eae75'

    url 'https://wot.gcdn.co/eu/files/osx/worldoftanks_eu.dmg'
    appcast 'https://wot.gcdn.co/eu/files/osx/WoT_OSX_update_eu.xml',
            checkpoint: 'd54b5dc41164a6dcb009b5322cbda681b0a0b46337fe7ba4ba13a359f1348771'
    homepage 'http://worldoftanks.eu/'
  end

  language 'CA', 'US', default: true do
    sha256 '90dca56188ff16623442996013181a46a3123a2dab319c0fbedfc29438891268'

    url 'https://wot.gcdn.co/us/files/osx/worldoftanks_na.dmg'
    appcast 'https://wot.gcdn.co/us/files/osx/WoT_OSX_update_na.xml',
            checkpoint: '8fcc538b937d2c3a4fe17b85e7e4c59b609afe77056f6ce5d229618a67b08d09'
    homepage 'http://worldoftanks.com/'
  end

  language 'CN', 'ID', 'IN', 'JP', 'PH', 'SG', 'TH', 'TW', 'VN' do
    sha256 '7a2e737cf2951aec6b236a6bfabf483fac20b584935c4ac067aad55584ed4dfb'

    url 'https://wot.gcdn.co/sea/files/osx/worldoftanks_asia.dmg'
    appcast 'https://wot.gcdn.co/sea/files/osx/WoT_OSX_update_asia.xml',
            checkpoint: '086cd744b3b602f69b32c016599a465b153bf28b67f8dc6a057addef45ba192f'
    homepage 'http://worldoftanks.asia/'
  end

  language 'KR' do
    sha256 '9e94c6f0767a14dd42ba4890452d1ad397a687deaff457a47157fa7c472793b0'

    url 'https://wot.gcdn.co/kr/files/osx/worldoftanks_kr.dmg'
    appcast 'https://wot.gcdn.co/kr/files/osx/WoT_OSX_update_kr.xml',
            checkpoint: '5fa09a65e22f1d42b00d052acc4abbb3cf4ce71d946a549fb5904427069d8a6e'
    homepage 'http://worldoftanks.kr/'
  end

  language 'RU' do
    sha256 'd5ea883948ebc74c63d8684fbde36f6266e21296855af443f610464f661e0e23'

    url 'https://wot.gcdn.co/ru/files/osx/worldoftanks_ru.dmg'
    appcast 'https://wot.gcdn.co/ru/files/osx/WoT_OSX_update_ru.xml',
            checkpoint: 'e2e2750ff01fb00a5ca44244273c821c2564ed533543ecf16ef73cce3712bfb8'
    homepage 'http://worldoftanks.ru/'
  end

  name 'World of Tanks'

  app 'World of Tanks.app'

  zap trash: '~/Documents/World_of_Tanks'
end
