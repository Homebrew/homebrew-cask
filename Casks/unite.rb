cask 'unite' do
  version '3.0'
  sha256 'baccda6edae65a8322ef31d9e40c5806a87a6fc6d462e6d2158c24e8c99a83b3'

  # paddle.s3.amazonaws.com/fulfillment_downloads/20398/576531 was verified as official when first introduced to the cask
  url 'https://paddle.s3.amazonaws.com/fulfillment_downloads/20398/576531/i0KpuCjrQtuPoyGcIcZO_Unite.zip'
  appcast 'https://drive.google.com/uc?export=download&id=1pPlm8G1yluV7ipcRh-2pmXP-nATWsjTK'
  name 'Unite'
  homepage 'https://bzgapps.com/unite'

  depends_on macos: '>= :high_sierra'

  app 'Unite.app'

  zap trash: [
               '~/Library/Application Support/Unite',
               '~/Library/Application Support/com.BZG.unite.*',
               '~/Library/Preferences/com.BZG.unite.*',
             ],
      rmdir: '/Users/Shared/Unite'
end
