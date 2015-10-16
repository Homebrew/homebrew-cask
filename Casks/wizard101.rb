cask :v1 => 'wizard101' do
  version :latest
  sha256  :no_check

  url 'https://www.wizard101.com/downloadGameMac/otherdownload'
  name 'Wizard101'
  appcast 'http://versionec.us.wizard101.com//Wizard101.xml',
          :sha256 => '537ab70a2fe32fd73c7d56950ea5edee58e1e0b1daf0014a2c921d3550d18740'
  homepage 'https://www.wizard101.com/'
  license :unknown

  app 'Wizard101.app'
end
