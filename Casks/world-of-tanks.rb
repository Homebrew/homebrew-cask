cask 'world-of-tanks' do
  version '2.0.10'

  # wot.gcdn.co was verified as official when first introduced to the cask
  language 'AT', 'BE', 'BG', 'CH', 'CZ', 'DE', 'DK', 'ES', 'FI', 'FR', 'GB', 'GR', 'HR', 'HU', 'IE', 'IT', 'LI', 'LT', 'LV', 'NL', 'NO', 'PL', 'PT', 'RO', 'RS', 'SE', 'SI', 'SK', 'TR' do
    sha256 '429f70b03935ad464c8b856204af9ab119a8707b9c2046e7f7004f5498ceffab'

    url 'https://wot.gcdn.co/eu/files/osx/worldoftanks_eu.dmg'
    appcast 'https://wot.gcdn.co/eu/files/osx/WoT_OSX_update_eu.xml',
            checkpoint: '40b1f7f1bc25d9b7874d3b9b57c07eb9df951a60b6860f1b0d26d27e969c3470'
    homepage 'https://worldoftanks.eu/'
  end

  language 'CA', 'US', default: true do
    sha256 '1269aa18b0cee5546413a91ca91da640d71ba2c79e997488055cfe905b4bc74e'

    url 'https://wot.gcdn.co/us/files/osx/worldoftanks_na.dmg'
    appcast 'https://wot.gcdn.co/us/files/osx/WoT_OSX_update_na.xml',
            checkpoint: 'd3f029945a0ca26d22e6b918308f6b2c243c060e891d16ebf2b7348ea5fbc858'
    homepage 'https://worldoftanks.com/'
  end

  language 'CN', 'ID', 'IN', 'JP', 'KR', 'PH', 'SG', 'TH', 'TW', 'VN' do
    sha256 '098241dde316754f6e7239a06695de62995035a6babab0780abfea19a1ef1f58'

    url 'https://wot.gcdn.co/sea/files/osx/worldoftanks_asia.dmg'
    appcast 'https://wot.gcdn.co/sea/files/osx/WoT_OSX_update_asia.xml',
            checkpoint: 'cd935dbefe8a98d6f2c3d1ebb176e85c3d5e57ae8286bbacf2e542b23cf8f874'
    homepage 'https://worldoftanks.asia/'
  end

  language 'RU' do
    sha256 '3553824ff2dd708fefc6d7d0e3ddb8b71b8237b02dfa676ba2dc5af91f452e16'

    url 'https://wot.gcdn.co/ru/files/osx/worldoftanks_ru.dmg'
    appcast 'https://wot.gcdn.co/ru/files/osx/WoT_OSX_update_ru.xml',
            checkpoint: 'bb8f9ac59abd1d415c115a55468c4821f26043859067c7895264082878294858'
    homepage 'https://worldoftanks.ru/'
  end

  name 'World of Tanks'

  app 'World of Tanks.app'

  zap delete: '~/Library/Saved Application State/com.codeweavers.worldoftanks.savedState',
      trash:  [
                '~/Documents/World_of_Tanks',
                '~/Library/Application Support/World of Tanks',
              ]
end
