cask 'yack' do
  version :latest
  sha256 :no_check

  # yack-prod-public.s3-us-west-2.amazonaws.com was verified as official when first introduced to the cask
  url 'https://yack-prod-public.s3-us-west-2.amazonaws.com/yack-releases/beta/yack-beta.dmg'
  name 'Yack'
  homepage 'https://yack.io/'

  app 'Yack! - Beta.app'

  zap trash: [
               '~/Library/Application Support/Yack',
               '~/Library/Saved Application State/com.yack.yackapp-beta.savedState',
               '~/Library/Preferences/com.yack.yackapp-beta.plist',
               '~/Library/Logs/Yack! - Beta',
             ]
end
