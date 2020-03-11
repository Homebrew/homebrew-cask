cask 'use-engine' do
  version '2.2.3'
  sha256 '679d1c5a1522f2975f29d2e268d1579057401b625b9d3624657205e7ecd1daf7'

  url "https://repository.use-together.com/stable/use-engine/macos/#{version.major}.x/#{version}/use-engine.dmg"
  name 'USE Engine'
  homepage 'https://www.use-together.com/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'USE Engine.app'

  zap trash: '~/Library/Application Support/OPEXMedia/USE Engine'
end
