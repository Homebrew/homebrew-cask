cask 'virtualc64' do
  # note: "64" is not a version number, but an intrinsic part of the product name
  version '1.4.1'
  sha256 'bc63006146e7d7710e5da0dce24e1c4df893f0aa412e9b0ba850630357693431'

  url "http://www.dirkwhoffmann.de/virtualc64/VirtualC64_#{version}.zip"
  appcast 'http://dirkwhoffmann.de/virtualc64/VirtualC64Appcast.xml',
          checkpoint: 'fa0960f713d6a5d9270dcffaca7697a9ef8f744e1cea376076885e8ab279f20e'
  name 'Virtual C64'
  homepage 'http://www.dirkwhoffmann.de/virtualc64/'
  license :gpl

  app 'VirtualC64.app'
end
