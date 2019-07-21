cask 'virtualc64' do
  # note: "64" is not a version number, but an intrinsic part of the product name
  version '3.3.1'
  sha256 '1867a341c6f92ae2ac441821d6b65c011093decf42bdd23e40c31b429bd19a71'

  url "http://www.dirkwhoffmann.de/virtualc64/VirtualC64_#{version}.zip"
  appcast 'http://dirkwhoffmann.de/virtualc64/VirtualC64Appcast.xml'
  name 'Virtual C64'
  homepage 'http://www.dirkwhoffmann.de/virtualc64/'

  app 'VirtualC64.app'
end
