cask 'xtabulator' do
  version '2.002'
  sha256 'a4ec6d302f233599034c51cbc5e09ff42964022e694487f1793185c5105d5ddc'

  url "http://www.bartastechnologies.com/products/xtabulator/sparkleupdates/#{version}.zip"
  appcast 'http://www.bartastechnologies.com/products/xtabulator/sparkleupdates/xtappcast.php',
          :sha256 => '11a351944e066600a05b69abb8c697be616bf6a2eabf50a8e92d2f28b519093b'
  name 'XTabulator'
  homepage 'http://www.bartastechnologies.com/products/xtabulator/'
  license :commercial

  app "XTabulator #{version.major}/XTabulator.app"
end
