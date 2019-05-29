cask 'totals' do
  version '3.2.5'
  sha256 'f44ba4a7f2dfa31af6a14c0e4bdcf1c9b55ccc2e9ae9193f2d3a2386b7aa3bc5'

  url "http://www.kedisoft.com/dl/totals/Totals-#{version}.dmg"
  appcast "http://kedisoft.com/appcasts/appcast.php?app=totals#{version.major}"
  name 'Totals'
  homepage 'http://www.kedisoft.com/totals/'

  depends_on macos: '>= :sierra'

  app 'Totals.app'
end
