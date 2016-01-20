cask 'totals' do
  version '3.1.2'
  sha256 'f3577a93423d228e8c6e640f5c87e1d57f40300e73d33a64aa28b68cc984e8c7'

  url "http://www.kedisoft.com/dl/totals/Totals-#{version}.dmg"
  appcast 'http://kedisoft.com/appcasts/appcast.php?app=totals3',
          checkpoint: '3eefa6a78c823068357a5c46850cc2fdf568a0755f1bbdf8eaa7719476d21336'
  name 'Totals'
  homepage 'http://www.kedisoft.com/totals/'
  license :commercial

  app 'Totals.app'
end
