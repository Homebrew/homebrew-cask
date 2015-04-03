cask :v1 => 'xtabulator' do
  version :latest
  sha256 :no_check

  url 'http://www.bartastechnologies.com/products/xtabulator/XTabulator2.zip'
  name 'XTabulator 2'
  homepage 'http://www.bartastechnologies.com/products/xtabulator/'
  license :commercial

  app 'XTabulator 2/XTabulator.app'
end
