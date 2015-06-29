cask :v1 => 'ti-connect-ce' do
  version '5.0.0.182'
  sha256 '54a80467c4807acbbe6f1dddf6516c045b36da0fc2d64c811d9212330cf9af9e'

  url "http://edudownload.ti.com/downloads/files/cdn/ti-connect-ce/TIConnectCE-#{version}.dmg"
  name 'TI Connect™ CE'
  homepage 'https://education.ti.com/en/us/products/computer_software/connectivity-software/ti-connect-ce-software'
  license :gratis

  app 'TI Connect CE.app'
end
