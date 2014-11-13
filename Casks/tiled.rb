cask :v1 => 'tiled' do
  version '0.10.1'
  sha256 'ace859c2f821aca117af9bb72d5cc4313816d25500666fe0a153c8667ead91a3'

  url "https://github.com/bjorn/tiled/releases/download/v#{version}/tiled-#{version}.dmg"
  homepage 'http://www.mapeditor.org/'
  license :oss

  app 'Tiled.app'
end
