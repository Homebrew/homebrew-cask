cask 'wwdc' do
  version '4.1.3'
  sha256 'a6f4e0e1a7a8aca193e8f71f2d5be04670df4b0eafe1621f3bf5af7747b8b2fa'

  url "https://github.com/insidegui/WWDC/releases/download/#{version}/WWDC_v#{version}.zip"
  appcast 'https://github.com/insidegui/WWDC/releases.atom',
          checkpoint: 'c4590058344b062805fa729b74f7197ab7cc83e52f137839f0790da80b804dca'
  name 'WWDC'
  homepage 'https://github.com/insidegui/WWDC'
  license :bsd

  auto_updates true

  app 'WWDC.app'
end
