cask 'thonny' do
  version '3.2.4'
  sha256 '60b271e3a5f29f2e72500e4280b67fe8684f6bfc18ee09f73de56070d975b999'

  # github.com/thonny/thonny/releases/download was verified as official when first introduced to the cask
  url "https://github.com/thonny/thonny/releases/download/v#{version}/thonny-#{version}.dmg"
  appcast 'https://github.com/thonny/thonny/releases.atom'
  name 'Thonny'
  homepage 'https://thonny.org/'

  app 'Thonny.app'

  zap trash: '~/.thonny'
end
