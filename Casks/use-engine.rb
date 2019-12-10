cask 'use-engine' do
  version '2.2.1'
  sha256 '8157c4ef061a5c37701a8fb187953c31bf00b924c3ba10f3dc0f714b78af8fb4'

  url "https://repository.use-together.com/stable/use-engine/macos/#{version.major}.x/#{version}/use-engine.dmg"
  name 'USE Engine'
  homepage 'https://www.use-together.com/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'USE Engine.app'

  zap trash: '~/Library/Application Support/OPEXMedia/USE Engine'
end
