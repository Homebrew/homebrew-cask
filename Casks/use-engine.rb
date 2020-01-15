cask 'use-engine' do
  version '2.2.2'
  sha256 '34cc73acde6cd563c70dd590867f92b53a20b6d8f124793a915cd82890fc24de'

  url "https://repository.use-together.com/stable/use-engine/macos/#{version.major}.x/#{version}/use-engine.dmg"
  name 'USE Engine'
  homepage 'https://www.use-together.com/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'USE Engine.app'

  zap trash: '~/Library/Application Support/OPEXMedia/USE Engine'
end
