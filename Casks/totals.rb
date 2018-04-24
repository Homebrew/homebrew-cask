cask 'totals' do
  version '3.2.3'
  sha256 'a7f80defceef3000ea4c946dccbd418d40084b9c53ebd0daf5e69c691d60342f'

  url "http://www.kedisoft.com/dl/totals/Totals-#{version}.dmg"
  appcast "http://kedisoft.com/appcasts/appcast.php?app=totals#{version.major}",
          checkpoint: '7f05a5a0feb56fdca7fd1487ede9397bfc7545e1521ab68e73621973bdf462c9'
  name 'Totals'
  homepage 'http://www.kedisoft.com/totals/'

  app 'Totals.app'
end
