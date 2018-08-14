cask 'xtabulator' do
  version '2.007'
  sha256 '36ac96d1141f8ff428da8764574d13537e3885d31c1678b0fdecb1a0b4d5162c'

  url "https://www.bartastechnologies.com/products/xtabulator/sparkleupdates/#{version}.zip"
  appcast 'https://www.bartastechnologies.com/products/xtabulator/sparkleupdates/xtappcast.php'
  name 'XTabulator'
  homepage 'https://www.bartastechnologies.com/products/xtabulator/'

  app 'XTabulator.app'
end
