cask 'zoc' do
  version '7.24.1'
  sha256 '36f0c922fa4412eb4d5d5e7f8c0f8d3437f9b284bcdbd681d104337c899c19aa'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
