cask 'via' do
  version '1.2.7'
  sha256 'f005c4727977fee50e9646fb7183e9d6518515e4524405f6e172f50321b8f24b'

  # github.com/the-via/releases was verified as official when first introduced to the cask
  url "https://github.com/the-via/releases/releases/download/v#{version}/via-#{version}-mac.dmg"
  appcast 'https://github.com/the-via/releases/releases.atom'
  name 'VIA'
  homepage 'https://caniusevia.com/'

  app 'VIA.app'
end
