cask 'xtabulator' do
  version '2.004'
  sha256 '7778fde457c0a091bcb403755e3e7094e2c7e5263029400ca4bfe24fd6bbd410'

  url "http://www.bartastechnologies.com/products/xtabulator/sparkleupdates/#{version}.zip"
  appcast 'http://www.bartastechnologies.com/products/xtabulator/sparkleupdates/xtappcast.php',
          checkpoint: '748a1baa4bcb3118c037a581f08ac1dad96a6ca904ddecddc10a0c675d703d69'
  name 'XTabulator'
  homepage 'http://www.bartastechnologies.com/products/xtabulator/'

  app "XTabulator #{version.major}/XTabulator.app"
end
