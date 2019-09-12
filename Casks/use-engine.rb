cask 'use-engine' do
  version '2.1.6'
  sha256 '7508037123d06a4f0e10c3c53a4e19aadb865e7351f61fe151433ea63994cebc'

  url "https://repository.use-together.com/stable/use-engine/macos/#{version.major}.x/#{version}/use-engine.dmg"
  name 'USE Engine'
  homepage 'https://www.use-together.com/'

  app 'USE Engine.app'

  zap trash: '~/Library/Application Support/OPEXMedia/USE Engine'
end
