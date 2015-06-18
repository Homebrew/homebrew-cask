cask :v1 => 'totals' do
  version '3.0.6'
  sha256 '64ce147800d408f006ff9a094cd4f849a7bf9391090a5b0a100a7888c077c44b'

  url "http://www.kedisoft.com/dl/totals/Totals-#{version}.dmg"
  name 'Totals'
  appcast 'http://kedisoft.com/appcasts/appcast.php?app=totals3',
          :sha256 => 'cecc91e66eb70d4847e71a26e95d46090448e60a2e49d9902f4f02850048a6ea'
  homepage 'http://www.kedisoft.com/totals/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Totals.app'
end
