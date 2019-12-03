cask 'zoc' do
  version '7.24.7'
  sha256 'f312e89c255c032add1911c0b58253a8259df8d5a4dac469b6dace0bdeee36d6'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
