cask 'totals' do
  version '3.2.4'
  sha256 '7774919487f74761f7eb6a5f4b14f2c1a80aa2cbeb7158e70d719b0f443e1ca7'

  url "http://www.kedisoft.com/dl/totals/Totals-#{version}.dmg"
  appcast "http://kedisoft.com/appcasts/appcast.php?app=totals#{version.major}"
  name 'Totals'
  homepage 'http://www.kedisoft.com/totals/'

  depends_on macos: '>= :sierra'

  app 'Totals.app'
end
