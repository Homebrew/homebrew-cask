cask 'zoc' do
  version '7.25.3'
  sha256 'b4704781b94c99e27aa8343369d711a0e82bbb904431b9da55f7233def300bef'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
