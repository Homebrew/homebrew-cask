cask 'use-engine' do
  version '2.2.5.2'
  sha256 '13f1be17c0f790e6a08dc11a4505c690aad7e8bb0919ad651f4376c2287458a5'

  url "https://repository.use-together.com/stable/use-engine/macos/#{version.major}.x/#{version}/use-engine.dmg"
  name 'USE Engine'
  homepage 'https://www.use-together.com/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'USE Engine.app'

  zap trash: '~/Library/Application Support/OPEXMedia/USE Engine'
end
