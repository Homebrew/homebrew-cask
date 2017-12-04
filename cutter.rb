cask 'cutter' do
  version '1.0'
  sha256 '5023c0d36c1f60ea28b35fd2c45867f4944f2653dfb41fbd3cd2378d6b40bf7b'

  # github.com/radareorg/cutter/ was verified as official when first introduced to the cask
  url 'https://github.com/radareorg/cutter/releases/download/v1.0/cutter.dmg'
  name 'Cutter'
  homepage 'https://radare.org/cutter/'

  app 'cutter.app'
end
