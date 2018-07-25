cask 'virtualc64' do
  # note: "64" is not a version number, but an intrinsic part of the product name
  version '2.4'
  sha256 '6a94b04cd991bea47c1982a02532c3a5c5950524e43f4b255bf60c4d20d3bff9'

  url "http://www.dirkwhoffmann.de/virtualc64/VirtualC64_#{version}.zip"
  appcast 'http://dirkwhoffmann.de/virtualc64/VirtualC64Appcast.xml'
  name 'Virtual C64'
  homepage 'http://www.dirkwhoffmann.de/virtualc64/'

  app 'VirtualC64.app'
end
