cask 'zoc' do
  version '7.22.4'
  sha256 '618f6bf25853a03ad57b94b2ba6ff37edcbea23e713dea390ab6cc55302c6ea9'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
