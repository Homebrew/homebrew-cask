cask 'virtual-mix-rack' do
  version '1.6.6.2'
  sha256 'd0ae13f883c86069b78914320a1a9b3d6fc773a1bc44fc4c3e92d2f868a0cf99'

  url "http://download.slatedigital.com/vmr/VMR_#{version.no_dots}_Mac.zip"
  name 'Slate Digital Virtual Mix Rack'
  homepage 'https://slatedigital.com/'

  pkg 'Install Virtual Mix Rack.pkg'

  uninstall script:  '/Applications/Slate Digital/Virtual Mix Rack/Uninstall.command',
            pkgutil: 'com.slatedigital.vmrcompletebundle*'
end
