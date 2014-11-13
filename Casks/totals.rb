cask :v1 => 'totals' do
  version '2.2.11'
  sha256 '594c58ea110bef590b03aa03a495f7e086cdda9f7fa8a9e6fe4c5af1fb892d09'

  url "http://www.kedisoft.com/dl/totals/Totals-#{version}.dmg"
  homepage 'http://www.kedisoft.com/totals/'
  license :unknown

  app 'Totals.app'
end
