cask 'therm' do
  version '0.3.1'
  sha256 '94de1afedb9f512a058282471bc31a134674e012796664ca0cbf83e332645c66'

  url "https://github.com/trufae/Therm/releases/download/#{version}/Therm-#{version}.zip"
  appcast 'https://github.com/trufae/Therm/releases.atom'
  name 'Therm'
  homepage 'https://github.com/trufae/Therm'

  app 'Therm.app'
end
