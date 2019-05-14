cask 'zoc' do
  version '7.23.4'
  sha256 '54eed36f7ee13d0b4d53bcd00d172807b52293fa4e33d1aa9b26fd8c9a811b63'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
