cask 'virtualc64' do
  # note: "64" is not a version number, but an intrinsic part of the product name
  version '1.8.1'
  sha256 '9dcb926044862b8e69a9eda28a37240d65a52074fee5ea10beda94c0e3f29bac'

  url "http://www.dirkwhoffmann.de/virtualc64/VirtualC64_#{version}.zip"
  appcast 'http://dirkwhoffmann.de/virtualc64/VirtualC64Appcast.xml',
          checkpoint: '73df4f00fec8cbef15bde0d10456765df4e875848595ae538770a81b6a467923'
  name 'Virtual C64'
  homepage 'http://www.dirkwhoffmann.de/virtualc64/'

  app 'VirtualC64.app'
end
