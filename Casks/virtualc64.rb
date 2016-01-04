cask 'virtualc64' do
  # note: "64" is not a version number, but an intrinsic part of the product name
  version '1.4.1'
  sha256 'bc63006146e7d7710e5da0dce24e1c4df893f0aa412e9b0ba850630357693431'

  url "http://www.dirkwhoffmann.de/virtualc64/VirtualC64_#{version}.zip"
  appcast 'http://dirkwhoffmann.de/virtualc64/VirtualC64Appcast.xml',
          :sha256 => 'ee401a5d795bec2b3a1d687e19861b59b2f9fcb43e68e629ae7a4776c14a40a9'
  name 'Virtual C64'
  homepage 'http://www.dirkwhoffmann.de/virtualc64/'
  license :gpl

  app 'VirtualC64.app'
end
