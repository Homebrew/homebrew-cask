cask 'virtual-mix-rack' do
  version '1.6.8.1'
  sha256 'f791027301c9340aeee1becef682a4ea28d3faf91ffa9823fa5d89159ea788c0'

  url "http://download.slatedigital.com/vmr/VMR_#{version.no_dots}_Mac.zip"
  name 'Slate Digital Virtual Mix Rack'
  homepage 'https://slatedigital.com/'

  pkg 'Install Virtual Mix Rack.pkg'

  uninstall script:  '/Applications/Slate Digital/Virtual Mix Rack/Uninstall.command',
            pkgutil: 'com.slatedigital.vmrcompletebundle*'
end
