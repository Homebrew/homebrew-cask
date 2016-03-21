cask 'wwdc' do
  version '3.2'
  sha256 '601afec4cc5b51a24a8776a5c2267e585e669db638fc2a6c72c2ef1218d9580e'

  url "https://github.com/insidegui/WWDC/releases/download/#{version}/WWDC_v#{version}.zip"
  appcast 'https://github.com/insidegui/WWDC/releases.atom',
          checkpoint: 'dc5e956921c4797b837fd740637655d99252e8f1e6f18c00188ad7b422ad3b72'
  name 'WWDC'
  homepage 'https://github.com/insidegui/WWDC'
  license :bsd

  app 'WWDC.app'
end
