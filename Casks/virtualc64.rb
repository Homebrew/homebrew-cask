cask 'virtualc64' do
  # note: "64" is not a version number, but an intrinsic part of the product name
  version '3.0.1'
  sha256 'a09c21213f6abf955994ca075ee8feec9c3f9fb913650aa47eac78a2373c9a73'

  url "http://www.dirkwhoffmann.de/virtualc64/VirtualC64_#{version}.zip"
  appcast 'http://dirkwhoffmann.de/virtualc64/VirtualC64Appcast.xml'
  name 'Virtual C64'
  homepage 'http://www.dirkwhoffmann.de/virtualc64/'

  app 'VirtualC64.app'
end
