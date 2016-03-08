cask 'tiled' do
  version '0.15.1'
  sha256 'b0875d9241669ccf094862ccf0c907184e971929ef2b0a137133be8d8c264676'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/bjorn/tiled/releases/download/v#{version}/tiled-#{version}.dmg"
  appcast 'https://github.com/bjorn/tiled/releases.atom',
          checkpoint: '3d905bd037677ff241e4af15f60902f86a210ba4e9282f9ec01b0f170f6068f3'
  name 'Tiled'
  homepage 'http://www.mapeditor.org/'
  license :gpl

  app 'Tiled.app'
end
