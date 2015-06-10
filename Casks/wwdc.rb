cask :v1 => 'wwdc' do
  version '2.1.1'
  sha256 '9d4498d467790ee3d19a9682f0329c79779178bc0210e56b3874e85a1633d76e'

  url "https://github.com/insidegui/WWDC/releases/download/#{version}/WWDC_v#{version}.zip"
  appcast 'https://github.com/insidegui/WWDC/releases.atom'
  name 'WWDC'
  homepage 'https://github.com/insidegui/WWDC'
  license :bsd

  app 'WWDC.app'
end
