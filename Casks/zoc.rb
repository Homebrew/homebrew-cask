cask 'zoc' do
  version '7.20.4'
  sha256 'da6b166934643bad6911a97a7e0e9213a8b182bc0437e76f2a00f7e707fa0d93'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
