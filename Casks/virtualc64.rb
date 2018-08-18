cask 'virtualc64' do
  # note: "64" is not a version number, but an intrinsic part of the product name
  version '2.4'
  sha256 '0ffbc544b500d609b818a2360f1e9b79bcd2ed8823c8980b55436929398e7ad3'

  url "http://www.dirkwhoffmann.de/virtualc64/VirtualC64_#{version}.zip"
  appcast 'http://dirkwhoffmann.de/virtualc64/VirtualC64Appcast.xml'
  name 'Virtual C64'
  homepage 'http://www.dirkwhoffmann.de/virtualc64/'

  app 'VirtualC64.app'
end
