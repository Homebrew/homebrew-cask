cask 'totals' do
  version '3.1.4'
  sha256 '78aa952ae63b98e8373c006611aa5782d0a4688bbdbca441f7e0b6b9910f2e1d'

  url "http://www.kedisoft.com/dl/totals/Totals-#{version}.dmg"
  appcast 'http://kedisoft.com/appcasts/appcast.php?app=totals3',
          checkpoint: '29dbb4e349cb4a0234f7c0fa86807c92f029d574d21146ce5cbb10bd4d9777dd'
  name 'Totals'
  homepage 'http://www.kedisoft.com/totals/'
  license :commercial

  app 'Totals.app'
end
