cask 'use-engine' do
  version '2.1.2'
  sha256 'ad87d78fbd99a4c6d2c8b70787a16efea20352578d060365b84f75651fa4711b'

  url "https://repository.use-together.com/stable/use-engine/macos/#{version.major}.x/#{version}/use-engine.dmg"
  name 'USE Engine'
  homepage 'https://www.use-together.com/'

  app 'USE Engine.app'

  zap trash: '~/Library/Application Support/OPEXMedia/USE Engine'
end
