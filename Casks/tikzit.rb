cask 'tikzit' do
  version '2.1'
  sha256 '3b5ec458e6e50d5689124afc35a0cfc08d672ac7bc508037dfaccff082a8820e'

  # github.com/tikzit/tikzit was verified as official when first introduced to the cask
  url "https://github.com/tikzit/tikzit/releases/download/v#{version}/tikzit-osx.dmg"
  appcast 'https://github.com/tikzit/tikzit/releases.atom'
  name 'TikZiT'
  homepage 'https://tikzit.github.io/'

  app 'TikZiT.app'
end
