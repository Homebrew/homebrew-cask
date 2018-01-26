cask 'virtualc64' do
  # note: "64" is not a version number, but an intrinsic part of the product name
  version '1.5.2'
  sha256 '182c68c7cf60e124f737c688f77daa4f8d62ae2fcb9c637bdf9d74f6974f1ef8'

  url "http://www.dirkwhoffmann.de/virtualc64/VirtualC64_#{version}.zip"
  appcast 'http://dirkwhoffmann.de/virtualc64/VirtualC64Appcast.xml',
          checkpoint: 'd04e817b06f25640e2b2ba25653b3ca8a59a04c39b74aed6a4778f30c92a3792'
  name 'Virtual C64'
  homepage 'http://www.dirkwhoffmann.de/virtualc64/'

  app 'VirtualC64.app'
end
