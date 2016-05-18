cask 'virtual-mix-rack' do
  version '1.3.0.5'
  sha256 '01976e139a51d6a94779f06dfea89cfbbcba0071c194d23dd5a519da7a0164cb'

  url "http://download.slatedigital.com/vmr/VMR_#{version.no_dots}_Mac.zip"
  name 'Slate Digital Virtual Mix Rack'
  homepage 'http://www.slatedigital.com/products/virtual-mix-rack/'
  license :commercial

  container nested: "Slate Digital - VMR Complete Bundle Installer - #{version} - Mac.dmg"

  pkg 'Install Virtual Mix Rack.pkg'
end
