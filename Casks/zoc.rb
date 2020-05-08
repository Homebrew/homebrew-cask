cask 'zoc' do
  version '7.25.7'
  sha256 'c0e1a69c367f2de768609e9eec0dbe58b59056b89963a48f783557362e44dec1'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
