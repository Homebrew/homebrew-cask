cask 'thonny' do
  version '3.2.3'
  sha256 'def7e5898208b47ad8590a3c1a0870477ed7c5662199770b16c05c642062519c'

  # github.com/thonny/thonny/releases/download was verified as official when first introduced to the cask
  url "https://github.com/thonny/thonny/releases/download/v#{version}/thonny-#{version}.dmg"
  appcast 'https://github.com/thonny/thonny/releases.atom'
  name 'Thonny'
  homepage 'https://thonny.org/'

  app 'Thonny.app'

  zap trash: '~/.thonny'
end
