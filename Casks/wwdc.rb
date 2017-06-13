cask 'wwdc' do
  version '5.0.8'
  sha256 '0ba7bfa89df7c301940c0303015dab66b635db6571746c2e806e408cc52c6b90'

  # github.com/insidegui/WWDC was verified as official when first introduced to the cask
  url "https://github.com/insidegui/WWDC/releases/download/#{version}/WWDC_v#{version}.zip"
  appcast 'https://github.com/insidegui/WWDC/releases.atom',
          checkpoint: '4b6734496cd3736a612c6dc4a5d29efc8e3d90095626057901d47ea3f37bd633'
  name 'WWDC'
  homepage 'https://wwdc.io/'

  auto_updates true

  app 'WWDC.app'

  zap delete: [
                '~/Library/Application Support/br.com.guilhermerambo.WWDC',
                '~/Library/Caches/br.com.guilhermerambo.WWDC',
                '~/Library/Preferences/br.com.guilhermerambo.WWDC.plist',
              ]
end
