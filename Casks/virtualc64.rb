cask 'virtualc64' do
  # note: "64" is not a version number, but an intrinsic part of the product name
  version '2.2'
  sha256 '6db77b25c712e45949556bd909b03f89991a7bd693db49f1e6b4c4026fd2b4aa'

  url "http://www.dirkwhoffmann.de/virtualc64/VirtualC64_#{version}.zip"
  appcast 'http://dirkwhoffmann.de/virtualc64/VirtualC64Appcast.xml'
  name 'Virtual C64'
  homepage 'http://www.dirkwhoffmann.de/virtualc64/'

  app 'VirtualC64.app'
end
