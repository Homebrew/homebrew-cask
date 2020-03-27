cask 'use-engine' do
  version '2.2.4'
  sha256 '39e023ec3c82a79d8d0c1c41eb8a33c51214aba1d427d0b4f12c8f87ab4d5493'

  url "https://repository.use-together.com/stable/use-engine/macos/#{version.major}.x/#{version}/use-engine.dmg"
  name 'USE Engine'
  homepage 'https://www.use-together.com/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'USE Engine.app'

  zap trash: '~/Library/Application Support/OPEXMedia/USE Engine'
end
