cask 'world-of-tanks' do
  version '2.0.12'

  # wot.gcdn.co was verified as official when first introduced to the cask
  language 'AT', 'BE', 'BG', 'CH', 'CZ', 'DE', 'DK', 'ES', 'FI', 'FR', 'GB', 'GR', 'HR', 'HU', 'IE', 'IT', 'LI', 'LT', 'LV', 'NL', 'NO', 'PL', 'PT', 'RO', 'RS', 'SE', 'SI', 'SK', 'TR' do
    sha256 'dad35d658ccb1e2a688c67983e211a6ea46ba90774a7108c2c5d7556a55737a4'

    url 'https://wot.gcdn.co/eu/files/osx/worldoftanks_eu.dmg'
    appcast 'https://wot.gcdn.co/eu/files/osx/WoT_OSX_update_eu.xml',
            checkpoint: '0eb7e801e576dd1c4dab041e97dcb8b203a2499a19562afd174bcfc9414d4c98'
    homepage 'https://worldoftanks.eu/'
  end

  language 'CA', 'US', default: true do
    sha256 '2f814d414b64f1091d53dc4ca883c09f4417790b1fc05028a6b4796a8d3760fc'

    url 'https://wot.gcdn.co/us/files/osx/worldoftanks_na.dmg'
    appcast 'https://wot.gcdn.co/us/files/osx/WoT_OSX_update_na.xml',
            checkpoint: '98f407f3a2e3a16f80e0903c17086a4e6047da467ef47d02f67c4405deec0c1d'
    homepage 'https://worldoftanks.com/'
  end

  language 'CN', 'ID', 'IN', 'JP', 'KR', 'PH', 'SG', 'TH', 'TW', 'VN' do
    sha256 '9a0a6e4fb8eb6c871df486beae3f825cfef574bab8c677a62d8975c3108ad340'

    url 'https://wot.gcdn.co/sea/files/osx/worldoftanks_asia.dmg'
    appcast 'https://wot.gcdn.co/sea/files/osx/WoT_OSX_update_asia.xml',
            checkpoint: '19da07e443b58c5ae36f380b5084a410d38228592f316017125917f7b04599da'
    homepage 'https://worldoftanks.asia/'
  end

  language 'RU' do
    sha256 '4d404668635e7af7a3b3a1c094fd8e229e1a780e5badc8bd5cd55cdac2ebc338'

    url 'https://wot.gcdn.co/ru/files/osx/worldoftanks_ru.dmg'
    appcast 'https://wot.gcdn.co/ru/files/osx/WoT_OSX_update_ru.xml',
            checkpoint: '8c912ed75f22062a97665477553d43f262b6aca71b0cd97df2f0cca8f2c9310a'
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
