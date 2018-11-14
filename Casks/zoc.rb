cask 'zoc' do
  version '7.21.4'
  sha256 '44f3b4983167625dc984c5c1f02897cd8331c0b1b2b01b41d8a389082c7fa73a'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
