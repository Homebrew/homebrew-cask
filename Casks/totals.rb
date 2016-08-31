cask 'totals' do
  version '3.1.3'
  sha256 '42921894ad7bb46a2698d0ad36d45bf4b504d6d331ba4999887e75caf0b032a6'

  url "http://www.kedisoft.com/dl/totals/Totals-#{version}.dmg"
  appcast 'http://kedisoft.com/appcasts/appcast.php?app=totals3',
          checkpoint: '094f83ffb0b50c42613280b54c58179c2574e6fdad529ed41b7efd7ce3f3ed6b'
  name 'Totals'
  homepage 'http://www.kedisoft.com/totals/'
  license :commercial

  app 'Totals.app'
end
