cask :v1 => 'totals' do
  version '3.1'
  sha256 '35efc4f7521ecdc6baec8284d2e52fad4f461195416f5c4fc60bd35e969c8cb2'

  url "http://www.kedisoft.com/dl/totals/Totals-#{version}.dmg"
  name 'Totals'
  appcast 'http://kedisoft.com/appcasts/appcast.php?app=totals3',
          :sha256 => '0d0dff1b24438235cec9f4c0da31c410ab3b172fa79a32bab4ea0de325dda89c'
  homepage 'http://www.kedisoft.com/totals/'
  license :commercial

  app 'Totals.app'
end
