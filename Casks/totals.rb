cask 'totals' do
  version '3.1.5'
  sha256 '3e723296e3d4eefd3acc3bbe8e95ede5ea4b3f5bb990e9d4f86562d651526db2'

  url "http://www.kedisoft.com/dl/totals/Totals-#{version}.dmg"
  appcast "http://kedisoft.com/appcasts/appcast.php?app=totals#{version.major}",
          checkpoint: 'd5f6a194602a18a1d6916696346218e7a39fa88c939f90c243e61ecde788892f'
  name 'Totals'
  homepage 'http://www.kedisoft.com/totals/'

  app 'Totals.app'
end
