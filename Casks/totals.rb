cask :v1 => 'totals' do
  version '3.1.1'
  sha256 '06739b005d95d319ce8884fc5ad89b1ed84b01a4ccd586dc2aaec4719155c8d3'

  url "http://www.kedisoft.com/dl/totals/Totals-#{version}.dmg"
  name 'Totals'
  appcast 'http://kedisoft.com/appcasts/appcast.php?app=totals3',
          :sha256 => '0d0dff1b24438235cec9f4c0da31c410ab3b172fa79a32bab4ea0de325dda89c'
  homepage 'http://www.kedisoft.com/totals/'
  license :commercial

  app 'Totals.app'
end
