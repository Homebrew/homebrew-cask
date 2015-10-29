cask :v1 => 'totals' do
  version '3.1.2'
  sha256 'f3577a93423d228e8c6e640f5c87e1d57f40300e73d33a64aa28b68cc984e8c7'

  url "http://www.kedisoft.com/dl/totals/Totals-#{version}.dmg"
  name 'Totals'
  appcast 'http://kedisoft.com/appcasts/appcast.php?app=totals3',
          :sha256 => 'd0a003df02921bfbeb93a0f225df86d706b648a76ca8ec01bca4063b27f3127b'
  homepage 'http://www.kedisoft.com/totals/'
  license :commercial

  app 'Totals.app'
end
