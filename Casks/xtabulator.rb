cask 'xtabulator' do
  version '2.002'
  sha256 'a4ec6d302f233599034c51cbc5e09ff42964022e694487f1793185c5105d5ddc'

  url "http://www.bartastechnologies.com/products/xtabulator/sparkleupdates/#{version}.zip"
  appcast 'http://www.bartastechnologies.com/products/xtabulator/sparkleupdates/xtappcast.php',
          :sha256 => 'd79d7e09bd19b409e47748a619f932c1b9f5dfed58fd2eb827a7171e14e32377'
  name 'XTabulator'
  homepage 'http://www.bartastechnologies.com/products/xtabulator/'
  license :commercial

  app "XTabulator #{version.major}/XTabulator.app"
end
