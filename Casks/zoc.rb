cask 'zoc' do
  version '7.23.0'
  sha256 '02ed86454c596e3963305a46951a6386629f0f29341584b36a44f5a975387878'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
