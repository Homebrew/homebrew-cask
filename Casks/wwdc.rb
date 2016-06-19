cask 'wwdc' do
  version '4.2.3'
  sha256 '05bb1dfabe2a3c0dce828938c235061ca5090987f8ee3f192f00e57190002c38'

  url "https://github.com/insidegui/WWDC/releases/download/#{version}/WWDC_v#{version}.zip"
  appcast 'https://github.com/insidegui/WWDC/releases.atom',
          checkpoint: '6f91f3ab1b80575979bf13350cf36d796fe6b4ad1cf979d7aabfe1cba8332811'
  name 'WWDC'
  homepage 'https://github.com/insidegui/WWDC'
  license :bsd

  auto_updates true

  app 'WWDC.app'
end
