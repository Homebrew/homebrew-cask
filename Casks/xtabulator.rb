cask 'xtabulator' do
  version '2.004'
  sha256 '7778fde457c0a091bcb403755e3e7094e2c7e5263029400ca4bfe24fd6bbd410'

  url "https://www.bartastechnologies.com/products/xtabulator/sparkleupdates/#{version}.zip"
  appcast 'https://www.bartastechnologies.com/products/xtabulator/sparkleupdates/xtappcast.php',
          checkpoint: '4a20255ba27c3c8d7c84f4acc76d4675e0918f672fc33d0312d9fda275204a50'
  name 'XTabulator'
  homepage 'https://www.bartastechnologies.com/products/xtabulator/'

  app "XTabulator #{version.major}/XTabulator.app"
end
