cask 'virtualc64' do
  # note: "64" is not a version number, but an intrinsic part of the product name
  version '1.5.1'
  sha256 '7029b58d62887a81c9c6d984a2ae8d54335276c2fe6ff818b5bcfefa047fe62d'

  url "http://www.dirkwhoffmann.de/virtualc64/VirtualC64_#{version}.zip"
  appcast 'http://dirkwhoffmann.de/virtualc64/VirtualC64Appcast.xml',
          checkpoint: '8665d923f94636c8b9a2ae31afe31ede39099425e26bf5c94509eb5b3be0f0a5'
  name 'Virtual C64'
  homepage 'http://www.dirkwhoffmann.de/virtualc64/'

  app 'VirtualC64.app'
end
