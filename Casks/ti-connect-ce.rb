cask 'ti-connect-ce' do
  version '5.3.0.384'
  sha256 '71a4253cd149031161815f031a51e6e77d394f0b5aae784f2d0ee45e70677a2e'

  url "https://education.ti.com/download/en/ed-tech/CA9C74CAD02440A69FDC7189D7E1B6C2/735C70B6BDFB43C39260B4097465FF46/TIConnectCE-#{version}.dmg"
  name 'TI Connect™ CE'
  homepage 'https://education.ti.com/en/products/computer-software/ti-connect-ce-sw'

  app 'TI Connect CE.app'
end
