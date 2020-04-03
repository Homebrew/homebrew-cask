cask 'use-engine' do
  version '2.2.4.1'
  sha256 '6077d7f7a1ae417acb6257443a9db9ebe7803db7f9ef4125b57bc7ded999763e'

  url "https://repository.use-together.com/stable/use-engine/macos/#{version.major}.x/#{version}/use-engine.dmg"
  name 'USE Engine'
  homepage 'https://www.use-together.com/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'USE Engine.app'

  zap trash: '~/Library/Application Support/OPEXMedia/USE Engine'
end
