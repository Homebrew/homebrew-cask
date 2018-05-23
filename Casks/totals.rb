cask 'totals' do
  version '3.2.4'
  sha256 '7774919487f74761f7eb6a5f4b14f2c1a80aa2cbeb7158e70d719b0f443e1ca7'

  url "http://www.kedisoft.com/dl/totals/Totals-#{version}.dmg"
  appcast "http://kedisoft.com/appcasts/appcast.php?app=totals#{version.major}",
          checkpoint: 'e66a8fb4278c916f60d0c7a07b35103aeaaad397af0c65f1955551d56f76ab18'
  name 'Totals'
  homepage 'http://www.kedisoft.com/totals/'

  app 'Totals.app'
end
