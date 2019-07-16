cask 'tribler' do
  version '7.2.2'
  sha256 'd9fc8860950414daa062b3bdb219505f44869adc31096acafb44712cd719dafa'

  # github.com/Tribler/tribler was verified as official when first introduced to the cask
  url "https://github.com/Tribler/tribler/releases/download/v#{version}/Tribler-#{version}.dmg"
  appcast 'https://github.com/Tribler/tribler/releases.atom'
  name 'Tribler'
  homepage 'https://www.tribler.org/'

  app 'Tribler.app'
end
