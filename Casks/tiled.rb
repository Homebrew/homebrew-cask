cask :v1 => 'tiled' do
  version '0.11.0'
  sha256 '82d9c33f02b1f048807e55728331e1c94c92a9cd3cb83d1bc6dc89cf7655e1be'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/bjorn/tiled/releases/download/v#{version}/tiled-#{version}.dmg"
  appcast 'https://github.com/bjorn/tiled/releases.atom'
  name 'Tiled'
  homepage 'http://www.mapeditor.org/'
  license :gpl

  app 'Tiled.app'
end
