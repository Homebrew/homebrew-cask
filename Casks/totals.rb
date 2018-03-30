cask 'totals' do
  version '3.2.1'
  sha256 'aed3c1d3cef845e2a3e35d2937a0d60dab66247995504561dbd41d5329510cb7'

  url "http://www.kedisoft.com/dl/totals/Totals-#{version}.dmg"
  appcast "http://kedisoft.com/appcasts/appcast.php?app=totals#{version.major}",
          checkpoint: 'ff8ea9a756320f0250f39803b03c1451a7539c7a7317b13fa7cb2b69993e0938'
  name 'Totals'
  homepage 'http://www.kedisoft.com/totals/'

  app 'Totals.app'
end
