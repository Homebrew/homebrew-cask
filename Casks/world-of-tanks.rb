cask 'world-of-tanks' do
  version '1.0.37'

  # wot.gcdn.co was verified as official when first introduced to the cask
  language 'AT', 'BE', 'BG', 'CH', 'CZ', 'DE', 'DK', 'ES', 'FI', 'FR', 'GB', 'GR', 'HR', 'HU', 'IE', 'IT', 'LI', 'LT', 'LV', 'NL', 'NO', 'PL', 'PT', 'RO', 'RS', 'SE', 'SI', 'SK', 'TR' do
    sha256 '7caed20a567676b17d5518dfb6572683032b23b2060e919e77c0f6fd3d2eae75'

    url 'https://wot.gcdn.co/eu/files/osx/worldoftanks_eu.dmg'
    appcast 'https://wot.gcdn.co/eu/files/osx/WoT_OSX_update_eu.xml',
            checkpoint: 'ff33b34e2e24f607ee0ed1d61381f735f1549a5f97efd4e8c58d3b815e59920d'
    homepage 'http://worldoftanks.eu/'
  end

  language 'CA', 'US', default: true do
    sha256 '90dca56188ff16623442996013181a46a3123a2dab319c0fbedfc29438891268'

    url 'https://wot.gcdn.co/us/files/osx/worldoftanks_na.dmg'
    appcast 'https://wot.gcdn.co/us/files/osx/WoT_OSX_update_na.xml',
            checkpoint: 'd2ec97babd465efc465a53aa68449d36e7b6c113d4580b1e93772fcc159bb564'
    homepage 'http://worldoftanks.com/'
  end

  language 'CN', 'ID', 'IN', 'JP', 'PH', 'SG', 'TH', 'TW', 'VN' do
    sha256 '7a2e737cf2951aec6b236a6bfabf483fac20b584935c4ac067aad55584ed4dfb'

    url 'https://wot.gcdn.co/sea/files/osx/worldoftanks_asia.dmg'
    appcast 'https://wot.gcdn.co/sea/files/osx/WoT_OSX_update_asia.xml',
            checkpoint: 'ac623285e49b86445a21fa1d1fa252db3c64b8eb404dea8612bbe65d85ca46c3'
    homepage 'http://worldoftanks.asia/'
  end

  language 'KR' do
    sha256 '9e94c6f0767a14dd42ba4890452d1ad397a687deaff457a47157fa7c472793b0'

    url 'https://wot.gcdn.co/kr/files/osx/worldoftanks_kr.dmg'
    appcast 'https://wot.gcdn.co/kr/files/osx/WoT_OSX_update_kr.xml',
            checkpoint: 'eebcac213b0780034b8592a30584d0022edf3ce611d45eff5d91b39b51e7127e'
    homepage 'http://worldoftanks.kr/'
  end

  language 'RU' do
    sha256 'e2e2750ff01fb00a5ca44244273c821c2564ed533543ecf16ef73cce3712bfb8'

    url 'https://wot.gcdn.co/ru/files/osx/worldoftanks_ru.dmg'
    appcast 'https://wot.gcdn.co/ru/files/osx/WoT_OSX_update_ru.xml',
            checkpoint: '00dcde02245e1b02259316adf06235a0cd67b94c6449e3798a814f10180a8c5e'
    homepage 'http://worldoftanks.ru/'
  end

  name 'World of Tanks'

  app 'World of Tanks.app'

  zap trash: '~/Documents/World_of_Tanks'
end
