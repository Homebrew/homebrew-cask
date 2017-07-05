cask 'zoc' do
  version '7.15.0'
  sha256 '361d2bbad2b6cbaa1c1288bd4331696942762aca9dd09e290d1ede335f5a816a'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "http://www.emtec.com/downloads/zoc/zoc#{version.no_dots}_changes.txt",
          checkpoint: '565dfc143f2c4f8ec418762d7684fb693b10009591c26800d6cf27cb37d397a5'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
