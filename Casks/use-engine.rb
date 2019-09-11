cask 'use-engine' do
  version '2.1.5'
  sha256 'a63ecd6007c937c34b7e4996004af29bc301475061c90ece186504e156633272'

  url "https://repository.use-together.com/stable/use-engine/macos/#{version.major}.x/#{version}/use-engine.dmg"
  name 'USE Engine'
  homepage 'https://www.use-together.com/'

  app 'USE Engine.app'

  zap trash: '~/Library/Application Support/OPEXMedia/USE Engine'
end
