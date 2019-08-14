cask 'zoc' do
  version '7.24.0'
  sha256 'db419b70189b2c80c7fcff44588b37a9ca61be97fc12959d3c6302269e2cd9bb'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
