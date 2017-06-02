cask 'ti-connect-ce' do
  version '5.2.0.51'
  sha256 '00538a50004f27f68ea889c34990bc3397b3d9aee2d48564441e4552c7346bfd'

  url "https://education.ti.com/download/en/ed-tech/CA9C74CAD02440A69FDC7189D7E1B6C2/342EC8CF085A44EAB56F5E90B966403A/TIConnectCE-#{version}.dmg"
  name 'TI Connect™ CE'
  homepage 'https://education.ti.com/en/products/computer-software/ti-connect-ce-sw'

  app 'TI Connect CE.app'
end
