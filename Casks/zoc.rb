cask 'zoc' do
  version '7.23.3'
  sha256 '5f13a902e48fea2ef1532d79f2283a392d235c4fe442eab05abce7711d3992cd'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
