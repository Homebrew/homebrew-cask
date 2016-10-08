cask 'tableflip' do
  version '1.0.2'
  sha256 '4178b77fb8b458560a191320e6009d1ac3c3e32eac95c0a2b05774edf0fcfaac'

  # s3.amazonaws.com/tableflip was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/tableflip/TableFlip-v#{version}.zip"
  appcast 'https://update.christiantietze.de/tableflip/v1/release.xml',
          checkpoint: '75935eb49c8ba7bde902f3bb7d10d94b80154143f880059d0844ee421c7d09c6'
  name 'TableFlip'
  homepage 'http://tableflipapp.com'
  license :commercial

  auto_updates true

  app 'TableFlip.app'
end
