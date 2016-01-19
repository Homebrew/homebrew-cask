cask 'xtabulator' do
  version '2.002'
  sha256 'a4ec6d302f233599034c51cbc5e09ff42964022e694487f1793185c5105d5ddc'

  url "http://www.bartastechnologies.com/products/xtabulator/sparkleupdates/#{version}.zip"
  appcast 'http://www.bartastechnologies.com/products/xtabulator/sparkleupdates/xtappcast.php',
          checkpoint: '6d9bec45bf8d4214eb1973876728c622ca8cd476c3b16430f63433693443359f'
  name 'XTabulator'
  homepage 'http://www.bartastechnologies.com/products/xtabulator/'
  license :commercial

  app "XTabulator #{version.major}/XTabulator.app"
end
