cask 'xtabulator' do
  version '2.003'
  sha256 '041d8a415ebc4e2bba615d887f6ba3dcb17f34b59a779db2c592dbb45ad2037d'

  url "http://www.bartastechnologies.com/products/xtabulator/sparkleupdates/#{version}.zip"
  appcast 'http://www.bartastechnologies.com/products/xtabulator/sparkleupdates/xtappcast.php',
          checkpoint: '9107d1169ca979ff224be09bf6981df865ad2d3666313afe2e72716eb882712d'
  name 'XTabulator'
  homepage 'http://www.bartastechnologies.com/products/xtabulator/'
  license :commercial

  app "XTabulator #{version.major}/XTabulator.app"
end
