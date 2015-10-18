cask :v1 => 'ti-connect-ce' do
  version '5.1.0.68'
  sha256 'e65815ad16ece77236cae631cfdca44626f6b9cfb08e3b184cc94fd9b607c52f'

  url "https://education.ti.com/download/en/US/CA9C74CAD02440A69FDC7189D7E1B6C2/C09614F0D8A34EC28D2DB30ECD421EA6/TIConnectCE-#{version}.dmg"
  name 'TI Connect™ CE'
  homepage 'https://education.ti.com/en/us/products/computer_software/connectivity-software/ti-connect-ce-software'
  license :gratis

  app 'TI Connect CE.app'
end
