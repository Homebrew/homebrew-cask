cask 'writefull' do
  version '3.0.0-beta19'
  sha256 '0b424a82bbf184661ca7f0dd6459a8248ccb643cf07855fadab1481e10445c8d'

  # s3-eu-west-1.amazonaws.com/writefull-binaries was verified as official when first introduced to the cask
  url "https://s3-eu-west-1.amazonaws.com/writefull-binaries/#{version}/Writefull.dmg"
  appcast 'https://writefullapp.com/js/download-urls.js',
          checkpoint: 'd83cc103b252b411627472e3db8d521236139ac8e74529acf36a379047948260'
  name 'Writefull'
  homepage 'https://writefullapp.com/'

  app 'Writefull.app'

  zap trash: [
               '~/Library/Application Support/Writefull_3beta',
               '~/Library/Application Support/com.paraphrase.Writefull.ShipIt',
               '~/Library/Caches/Writefull_3beta',
               '~/Library/Caches/com.paraphrase.Writefull',
               '~/Library/Preferences/com.paraphrase.Writefull.plist',
               '~/Library/Saved Application State/com.paraphrase.Writefull.savedState',
             ]
end
