cask 'zoc' do
  version '7.21.0'
  sha256 '1b415d6e04b458418048213854784c4724ec2cb5c1e8a4a7ec114b90b76f71d2'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
