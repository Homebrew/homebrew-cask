cask 'tribler' do
  version '7.3.2'
  sha256 '47f656a5d9f16b1db0e7bd486efbec8baa81386adf1c887f2b59bfa8754a1549'

  # github.com/Tribler/tribler was verified as official when first introduced to the cask
  url "https://github.com/Tribler/tribler/releases/download/v#{version}/Tribler-#{version}.dmg"
  appcast 'https://github.com/Tribler/tribler/releases.atom'
  name 'Tribler'
  homepage 'https://www.tribler.org/'

  app 'Tribler.app'
end
