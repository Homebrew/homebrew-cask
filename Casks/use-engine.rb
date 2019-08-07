cask 'use-engine' do
  version '2.1.4'
  sha256 '1f88d089dc8d83ef2a62f77fc5cde86c509d76c4e89255e8b11f03ebfb7bfb93'

  url "https://repository.use-together.com/stable/use-engine/macos/#{version.major}.x/#{version}/use-engine.dmg"
  name 'USE Engine'
  homepage 'https://www.use-together.com/'

  app 'USE Engine.app'

  zap trash: '~/Library/Application Support/OPEXMedia/USE Engine'
end
