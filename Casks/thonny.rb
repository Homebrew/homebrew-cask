cask 'thonny' do
  version '3.2.5'
  sha256 '0806047ddde460002ce3f0b521c90f0df4abc21c3727bb900d78ceee9e579c02'

  # github.com/thonny/thonny/releases/download was verified as official when first introduced to the cask
  url "https://github.com/thonny/thonny/releases/download/v#{version}/thonny-#{version}.dmg"
  appcast 'https://github.com/thonny/thonny/releases.atom'
  name 'Thonny'
  homepage 'https://thonny.org/'

  app 'Thonny.app'

  zap trash: '~/.thonny'
end
