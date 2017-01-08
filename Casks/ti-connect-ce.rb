cask 'ti-connect-ce' do
  version '5.2.0.51'
  sha256 '00538a50004f27f68ea889c34990bc3397b3d9aee2d48564441e4552c7346bfd'

  url "http://edudownload.ti.com/downloads/files/cdn/ti-connect/#{version.major_minor}/TIConnectCE-#{version}.dmg"
  name 'TI Connect™ CE'
  homepage 'https://education.ti.com/en/products/computer-software/ti-connect-ce-sw'

  app 'TI Connect CE.app'
end
