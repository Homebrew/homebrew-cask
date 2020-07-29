cask 'virtualc64' do
  # note: "64" is not a version number, but an intrinsic part of the product name
  version '3.3.2'
  sha256 'ffe82a07306c56065e6e76b212ee4918308c93b72ba73e3ef7be8f6b5cd579ac'

  url "http://www.dirkwhoffmann.de/virtualc64/VirtualC64_#{version}.zip"
  appcast 'http://dirkwhoffmann.de/virtualc64/VirtualC64Appcast.xml'
  name 'Virtual C64'
  homepage 'http://www.dirkwhoffmann.de/virtualc64/'

  app 'VirtualC64.app'
end
