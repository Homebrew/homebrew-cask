cask 'virtualc64' do
  # note: "64" is not a version number, but an intrinsic part of the product name
  version '3.3'
  sha256 '5ebf410d46d267ea10dc7c196405e13ebf40c6a8fb7e6ef71b673a87305448c5'

  url "http://www.dirkwhoffmann.de/virtualc64/VirtualC64_#{version}.zip"
  appcast 'http://dirkwhoffmann.de/virtualc64/VirtualC64Appcast.xml'
  name 'Virtual C64'
  homepage 'http://www.dirkwhoffmann.de/virtualc64/'

  app 'VirtualC64.app'
end
