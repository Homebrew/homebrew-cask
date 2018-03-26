cask 'totals' do
  version '3.2.0'
  sha256 'c4d1ee2b0a221808dd28059857c082bc4402aca5d50b6b35a3752533c1239800'

  url "http://www.kedisoft.com/dl/totals/Totals-#{version}.dmg"
  appcast "http://kedisoft.com/appcasts/appcast.php?app=totals#{version.major}",
          checkpoint: '4e1335d4d61784bb58a1b5d9ac865dd1b5dfe8d1c556e64c7cd5450cf295c094'
  name 'Totals'
  homepage 'http://www.kedisoft.com/totals/'

  app 'Totals.app'
end
