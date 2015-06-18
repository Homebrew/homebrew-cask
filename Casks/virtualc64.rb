cask :v1 => 'virtualc64' do
  # note: "64" is not a version number, but an intrinsic part of the product name
  version '0.9.9.4'
  sha256 'd5c1ed83a0ec81b45f8879920cbce41f851e593ba476de2cd29a267433a30f85'

  url "http://www.dirkwhoffmann.de/virtualc64/VirtualC64_#{version}.zip"
  name 'Virtual C64'
  appcast 'http://dirkwhoffmann.de/virtualc64/VirtualC64Appcast.xml',
          :sha256 => '1778a743b3ac853e07236243191d72876ab91f04a5d61088b0690ef205cb3e1b'
  homepage 'http://www.dirkwhoffmann.de/virtualc64/'
  license :gpl

  app 'VirtualC64.app'
end
