cask 'thonny' do
  version '3.2.6'
  sha256 'bf2666d4877129fc507127be162d4864eb080a005d0484ae6bf20647034b9226'

  # github.com/thonny/thonny/releases/download was verified as official when first introduced to the cask
  url "https://github.com/thonny/thonny/releases/download/v#{version}/thonny-#{version}.dmg"
  appcast 'https://github.com/thonny/thonny/releases.atom'
  name 'Thonny'
  homepage 'https://thonny.org/'

  app 'Thonny.app'

  zap trash: '~/.thonny'
end
