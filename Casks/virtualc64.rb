cask 'virtualc64' do
  # note: "64" is not a version number, but an intrinsic part of the product name
  version '3.0'
  sha256 '1ea9c232aea4aa962174d972c19f2e1fca1699ac94e8241f1ac9cec310064d5d'

  url "http://www.dirkwhoffmann.de/virtualc64/VirtualC64_#{version}.zip"
  appcast 'http://dirkwhoffmann.de/virtualc64/VirtualC64Appcast.xml'
  name 'Virtual C64'
  homepage 'http://www.dirkwhoffmann.de/virtualc64/'

  app 'VirtualC64.app'
end
