cask 'xtabulator' do
  version '2.005'
  sha256 '0cef655780087da24c9cc0d1006780bec81badc4432612a9db6ee59a7350aa7e'

  url "https://www.bartastechnologies.com/products/xtabulator/sparkleupdates/#{version}.zip"
  appcast 'https://www.bartastechnologies.com/products/xtabulator/sparkleupdates/xtappcast.php',
          checkpoint: '1f759acefe39bf47bdb164fb58cd74b99e2f4c093d708cafc81d848f670f57c9'
  name 'XTabulator'
  homepage 'https://www.bartastechnologies.com/products/xtabulator/'

  app 'XTabulator.app'
end
