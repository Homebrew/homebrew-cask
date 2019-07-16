cask 'use-engine' do
  version '2.1.3'
  sha256 '8f6176a398176ccf9457b8cd855cdc2ae7dbcfc0002ae683e8a44d3ee93f6a56'

  url "https://repository.use-together.com/stable/use-engine/macos/#{version.major}.x/#{version}/use-engine.dmg"
  name 'USE Engine'
  homepage 'https://www.use-together.com/'

  app 'USE Engine.app'

  zap trash: '~/Library/Application Support/OPEXMedia/USE Engine'
end
