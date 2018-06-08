cask 'tikzit' do
  version '1.1'
  sha256 '4f334af8a33a57e8c451e9b03a8a4fafdfd59b60383ade3b7a9967a91cc2184b'

  # bintray.com/tikzit/tikzit was verified as official when first introduced to the cask
  url "https://bintray.com/tikzit/tikzit/download_file?file_path=releases%2F#{version}%2FTikZiT-osx.zip"
  appcast 'https://github.com/tikzit/tikzit/releases.atom',
          checkpoint: '1609bfd62f4456d9c1f5b3eca7fe6db2c2ff71b1a81dbfe3d41f32b283608dcc'
  name 'TikZiT'
  homepage 'http://tikzit.github.io/'

  app 'TikZiT.app'
end
