cask 'tower' do
  version '4.0,218:df8aba72'
  sha256 'b8a50fb1af2a56843297e3dd4b90d74246430d9f50b473ec612a6c2cfb54a38d'

  # fournova-app-updates.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower3-mac/#{version.after_comma.before_colon}-#{version.after_colon}/Tower-#{version.before_comma}-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.fournova.com/updates/tower3-mac/stable'
  name 'Tower'
  homepage 'https://www.git-tower.com/'

  auto_updates true

  app 'Tower.app'
  binary "#{appdir}/Tower.app/Contents/MacOS/gittower"

  zap trash: [
               '~/Library/Application Support/com.fournova.Tower*',
               '~/Library/Caches/com.fournova.Tower*',
               '~/Library/Preferences/com.fournova.Tower*.plist',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.fournova.tower*.sfl2',
             ]
end
