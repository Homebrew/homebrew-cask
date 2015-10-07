cask :v1 => 'xtabulator' do
  version :latest
  sha256 :no_check

  url 'http://www.bartastechnologies.com/products/xtabulator/XTabulator2.zip'
  name 'XTabulator 2'
  appcast 'http://www.bartastechnologies.com/products/xtabulator/sparkleupdates/xtappcast.php',
          :sha256 => '11a351944e066600a05b69abb8c697be616bf6a2eabf50a8e92d2f28b519093b'
  homepage 'http://www.bartastechnologies.com/products/xtabulator/'
  license :commercial

  app 'XTabulator 2/XTabulator.app'
end
