cask 'virtual-mix-rack' do
  version '1.6.4.1'
  sha256 '687eed5f1d7f09623ca6322a222178149c6a73d98fa794beaecc1a228d891e80'

  url "http://download.slatedigital.com/vmr/VMR_#{version.no_dots}_Mac.zip"
  name 'Slate Digital Virtual Mix Rack'
  homepage 'http://www.slatedigital.com/products/virtual-mix-rack/'

  container nested: "VMR_#{version.no_dots}_Mac.dmg"

  pkg 'Install Virtual Mix Rack.pkg'

  uninstall script:  '/Applications/Slate Digital/Virtual Mix Rack/Uninstall.command',
            pkgutil: 'com.slatedigital.vmrcompletebundle*'
end
