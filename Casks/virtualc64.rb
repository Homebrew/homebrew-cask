cask 'virtualc64' do
  # note: "64" is not a version number, but an intrinsic part of the product name
  version '2.3'
  sha256 '0916b38c7e0476443214c7cdf908b20c177811b572bdfbd054050829083098e3'

  url "http://www.dirkwhoffmann.de/virtualc64/VirtualC64_#{version}.zip"
  appcast 'http://dirkwhoffmann.de/virtualc64/VirtualC64Appcast.xml'
  name 'Virtual C64'
  homepage 'http://www.dirkwhoffmann.de/virtualc64/'

  app 'VirtualC64.app'
end
