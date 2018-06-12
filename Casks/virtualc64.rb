cask 'virtualc64' do
  # note: "64" is not a version number, but an intrinsic part of the product name
  version '1.11'
  sha256 '87b3a7a7db77bdc12ad8a850b241e0b635638c30524f30a9a883f6def1ef4ca5'

  url "http://www.dirkwhoffmann.de/virtualc64/VirtualC64_#{version}.zip"
  appcast 'http://dirkwhoffmann.de/virtualc64/VirtualC64Appcast.xml'
  name 'Virtual C64'
  homepage 'http://www.dirkwhoffmann.de/virtualc64/'

  app 'VirtualC64.app'
end
