cask 'virtualc64' do
  # note: "64" is not a version number, but an intrinsic part of the product name
  version '2.5'
  sha256 '793135574ab960e40beff9c4be7bb5a484d3d0ac1ebf15120d0729fd5749c8e3'

  url "http://www.dirkwhoffmann.de/virtualc64/VirtualC64_#{version}.zip"
  appcast 'http://dirkwhoffmann.de/virtualc64/VirtualC64Appcast.xml'
  name 'Virtual C64'
  homepage 'http://www.dirkwhoffmann.de/virtualc64/'

  app 'VirtualC64.app'
end
