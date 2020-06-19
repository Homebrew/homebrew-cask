cask 'tribler' do
  version '7.5.0'
  sha256 'b4181855a77e14541e158662814ae46800ada38e8fdc30b7a6299d424120c4cf'

  # github.com/Tribler/tribler/ was verified as official when first introduced to the cask
  url "https://github.com/Tribler/tribler/releases/download/v#{version}/Tribler-#{version}.dmg"
  appcast 'https://github.com/Tribler/tribler/releases.atom'
  name 'Tribler'
  homepage 'https://www.tribler.org/'

  app 'Tribler.app'
end
