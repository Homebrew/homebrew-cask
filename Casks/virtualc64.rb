cask 'virtualc64' do
  # note: "64" is not a version number, but an intrinsic part of the product name
  version '1.4'
  sha256 'c6b14eb714b7fa6abe8479d2a9b3a117fcbe8eb761756245b27831eed5402b61'

  url "http://www.dirkwhoffmann.de/virtualc64/VirtualC64_#{version}.zip"
  name 'Virtual C64'
  appcast 'http://dirkwhoffmann.de/virtualc64/VirtualC64Appcast.xml',
          :sha256 => '817423383d30f9136816aa1cece794f24dd2503a0aca6750779bbad6d5bca2bd'
  homepage 'http://www.dirkwhoffmann.de/virtualc64/'
  license :gpl

  app 'VirtualC64.app'
end
