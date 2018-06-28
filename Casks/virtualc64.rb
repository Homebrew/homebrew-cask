cask 'virtualc64' do
  # note: "64" is not a version number, but an intrinsic part of the product name
  version '2.1'
  sha256 '2de41a6b2cb240da80193ed5ff7fafd47729f061f2987d7a9e0daa43627fa832'

  url "http://www.dirkwhoffmann.de/virtualc64/VirtualC64_#{version}.zip"
  appcast 'http://dirkwhoffmann.de/virtualc64/VirtualC64Appcast.xml'
  name 'Virtual C64'
  homepage 'http://www.dirkwhoffmann.de/virtualc64/'

  app 'VirtualC64.app'
end
