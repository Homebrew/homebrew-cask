cask 'wwdc' do
  version '4.3'
  sha256 '3d161c65a8a6db77ca011c6e6cbb8235af380f7845f6047ec5e77892854cd884'

  url "https://github.com/insidegui/WWDC/releases/download/#{version}/WWDC_v#{version}.zip"
  appcast 'https://github.com/insidegui/WWDC/releases.atom',
          checkpoint: 'fe9ba442bd3968bd4eaa987cf42d345855c2f4a193b1a1f8a62f488f0a4e4234'
  name 'WWDC'
  homepage 'https://github.com/insidegui/WWDC'

  auto_updates true

  app 'WWDC.app'
end
