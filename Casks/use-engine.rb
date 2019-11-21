cask 'use-engine' do
  version '2.2.0'
  sha256 'ff3c5f9f3063260ad15485e50ed4ee7b1d9992e58a0d4bcd20f266e49c8c6785'

  url "https://repository.use-together.com/stable/use-engine/macos/#{version.major}.x/#{version}/use-engine.dmg"
  name 'USE Engine'
  homepage 'https://www.use-together.com/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'USE Engine.app'

  zap trash: '~/Library/Application Support/OPEXMedia/USE Engine'
end
