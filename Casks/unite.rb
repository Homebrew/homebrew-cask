cask 'unite' do
  version '3.0.1,DlLu0Oy7SNODqh2FocjT'
  sha256 'a6f524772789f919d8e0a9374bd06697407f06e9c1abb3c350985747a42968a4'

  # paddle.s3.amazonaws.com/fulfillment_downloads/20398/576531 was verified as official when first introduced to the cask
  url "https://paddle.s3.amazonaws.com/fulfillment_downloads/20398/576531/#{version.after_comma}_Unite.zip"
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
