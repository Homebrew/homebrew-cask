cask :v1 => 'totals' do
  version '3.0.6'
  sha256 '64ce147800d408f006ff9a094cd4f849a7bf9391090a5b0a100a7888c077c44b'

  url "http://www.kedisoft.com/dl/totals/Totals-#{version}.dmg"
  homepage 'http://www.kedisoft.com/totals/'
  license :unknown    # todo: improve this machine-generated value

  app 'Totals.app'
end
