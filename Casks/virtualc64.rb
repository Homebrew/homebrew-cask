cask 'virtualc64' do
  # note: "64" is not a version number, but an intrinsic part of the product name
  version '1.4.2'
  sha256 '8a000f9f4e16e6583901f9e19e9c6a5173d8cc13e7ed015b18eaf480cb05c616'

  url "http://www.dirkwhoffmann.de/virtualc64/VirtualC64_#{version}.zip"
  appcast 'http://dirkwhoffmann.de/virtualc64/VirtualC64Appcast.xml',
          checkpoint: '81d3f0fbe4227e74b6712d99b265d6da4d57cf732ed1d7cef7028816748f3633'
  name 'Virtual C64'
  homepage 'http://www.dirkwhoffmann.de/virtualc64/'

  app 'VirtualC64.app'
end
