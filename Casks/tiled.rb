cask 'tiled' do
  version '1.0.1'
  sha256 'db21bb075ba19bcf92234ab70313edff688bf03a0a18a2adad1532c975ae3a21'

  # github.com/bjorn/tiled was verified as official when first introduced to the cask
  url "https://github.com/bjorn/tiled/releases/download/v#{version}/tiled-#{version}.dmg"
  appcast 'https://github.com/bjorn/tiled/releases.atom',
          checkpoint: '963dc752b96cd16496b68bf2ea68e3b6ed65e71f587f9b3a100b7a97b5cdd0e8'
  name 'Tiled'
  homepage 'http://www.mapeditor.org/'

  app 'Tiled.app'
end
