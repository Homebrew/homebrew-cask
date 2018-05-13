cask 'virtualc64' do
  # note: "64" is not a version number, but an intrinsic part of the product name
  version '1.10'
  sha256 'f8f19a1afa7b0fb842b691a99ea100cdda2eb97c974743c495e5a320c8fdde82'

  url "http://www.dirkwhoffmann.de/virtualc64/VirtualC64_#{version}.zip"
  appcast 'http://dirkwhoffmann.de/virtualc64/VirtualC64Appcast.xml',
          checkpoint: 'c8a60207d8c226d944baa1ce381ca4a754f37a1e4117cf2b11b858bfa046fa25'
  name 'Virtual C64'
  homepage 'http://www.dirkwhoffmann.de/virtualc64/'

  app 'VirtualC64.app'
end
