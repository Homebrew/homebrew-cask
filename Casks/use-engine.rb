cask 'use-engine' do
  version '2.2.5.1'
  sha256 '9f095c65378bcf1dbcef5bad229aee379e1be4bd37c9d4a2f0cf307b8de7d3a7'

  url "https://repository.use-together.com/stable/use-engine/macos/#{version.major}.x/#{version}/use-engine.dmg"
  name 'USE Engine'
  homepage 'https://www.use-together.com/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'USE Engine.app'

  zap trash: '~/Library/Application Support/OPEXMedia/USE Engine'
end
