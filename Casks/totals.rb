cask 'totals' do
  version '3.1.2'
  sha256 'f3577a93423d228e8c6e640f5c87e1d57f40300e73d33a64aa28b68cc984e8c7'

  url "http://www.kedisoft.com/dl/totals/Totals-#{version}.dmg"
  appcast 'http://kedisoft.com/appcasts/appcast.php?app=totals3',
          :sha256 => 'aa1ce22bfd04205e65602b6146542ce736f6a9c108bd3f87e169cc4d7ffe1c1d'
  name 'Totals'
  homepage 'http://www.kedisoft.com/totals/'
  license :commercial

  app 'Totals.app'
end
