cask 'zoc' do
  version '7.21.5'
  sha256 'fbc9e47277c3de4a042c8c5bbc6f0b3eafeba99be9fc1c9ac03c2e88103f8372'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
