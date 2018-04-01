cask 'virtual-mix-rack' do
  version '1.7.3.1'
  sha256 'a1c11a6ba382ad5846b3284e39510531211644505da2c2d6985eb9f711a1c963'

  url "http://download.slatedigital.com/vmr/VMR_#{version.no_dots}_Mac.zip"
  name 'Slate Digital Virtual Mix Rack'
  homepage 'https://slatedigital.com/'

  pkg 'Install Virtual Mix Rack.pkg'

  uninstall script:  '/Applications/Slate Digital/Virtual Mix Rack/Uninstall.command',
            pkgutil: 'com.slatedigital.vmrcompletebundle*'
end
