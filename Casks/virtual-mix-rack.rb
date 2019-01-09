cask 'virtual-mix-rack' do
  version '2.1.2.1'
  sha256 '9080bf387f7f4a63bbc0da20c6abf58508ea9813a4254ea95bd25f5ed98c8f6e'

  url "http://download.slatedigital.com/vmr/VMR_#{version.no_dots}_Mac.zip"
  name 'Slate Digital Virtual Mix Rack'
  homepage 'https://slatedigital.com/'

  pkg 'Install VMR Complete Bundle.pkg'

  uninstall script:  '/Applications/Slate Digital/Virtual Mix Rack/Uninstall.command',
            pkgutil: 'com.slatedigital.vmrcompletebundle*'
end
