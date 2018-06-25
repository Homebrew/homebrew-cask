cask 'virtualc64' do
  # note: "64" is not a version number, but an intrinsic part of the product name
  version '2.0'
  sha256 '69172a35efcdda0bdd05bc04b74db4d3a77ad3ca2c6aa18aed545d41a775a03c'

  url "http://www.dirkwhoffmann.de/virtualc64/VirtualC64_#{version}.zip"
  appcast 'http://dirkwhoffmann.de/virtualc64/VirtualC64Appcast.xml'
  name 'Virtual C64'
  homepage 'http://www.dirkwhoffmann.de/virtualc64/'

  app 'VirtualC64.app'
end
