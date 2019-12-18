cask 'zoc' do
  version '7.25.0'
  sha256 '4312f1931ddfb5b79592627fde75cec22df8ee4ee7c248f7460775b7d23a353b'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast 'https://www.emtec.com/downloads/zoc/zoc_changes.txt'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
