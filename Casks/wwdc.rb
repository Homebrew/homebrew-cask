cask :v1 => 'wwdc' do
  version '2.2'
  sha256 'a654e323d12bc1f7cd6ae1b4a262cd787ee96f17166761050bea3ef4d6f8c54c'

  url "https://github.com/insidegui/WWDC/releases/download/#{version}/WWDC_v#{version}.zip"
  appcast 'https://github.com/insidegui/WWDC/releases.atom'
  name 'WWDC'
  homepage 'https://github.com/insidegui/WWDC'
  license :bsd

  app 'WWDC.app'
end
