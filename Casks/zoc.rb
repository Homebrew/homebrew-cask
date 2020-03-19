cask 'zoc' do
  version '7.25.5'
  sha256 '30b24526ea3b4fa9d54cc00972374246e8d1973753f33c92dd5e0ebfe6c2b830'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
