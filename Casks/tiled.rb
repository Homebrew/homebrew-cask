cask 'tiled' do
  version '1.2.2'
  sha256 '1b9f5e33b4b3e95bca7df6761c9c92944d03bab684056de7be5032d5b50251e3'

  # github.com/bjorn/tiled was verified as official when first introduced to the cask
  url "https://github.com/bjorn/tiled/releases/download/v#{version}/Tiled-#{version}-macos.zip"
  appcast 'https://github.com/bjorn/tiled/releases.atom'
  name 'Tiled'
  homepage 'https://www.mapeditor.org/'

  app 'Tiled.app'
end
