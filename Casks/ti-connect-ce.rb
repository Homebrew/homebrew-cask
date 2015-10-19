cask :v1 => 'ti-connect-ce' do
  version '5.1.0.68'
  sha256 'e65815ad16ece77236cae631cfdca44626f6b9cfb08e3b184cc94fd9b607c52f'

  url "http://edudownload.ti.com/downloads/files/cdn/ti-connect/#{version.to_f}/TIConnectCE-#{version}.dmg"
  name 'TI Connect™ CE'
  homepage 'https://education.ti.com/en/us/products/computer_software/connectivity-software/ti-connect-ce-software'
  license :gratis

  app 'TI Connect CE.app'
end
