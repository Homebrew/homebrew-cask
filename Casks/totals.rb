cask :v1 => 'totals' do
  version '3.1'
  sha256 '35efc4f7521ecdc6baec8284d2e52fad4f461195416f5c4fc60bd35e969c8cb2'

  url "http://www.kedisoft.com/dl/totals/Totals-#{version}.dmg"
  name 'Totals'
  appcast 'http://kedisoft.com/appcasts/appcast.php?app=totals3',
          :sha256 => '2355747b573a2d9143cfbc55529ac191a1ed949afed935d9e88ebdf3b54a08dd'
  homepage 'http://www.kedisoft.com/totals/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Totals.app'
end
