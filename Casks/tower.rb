cask 'tower' do
  version '4.5,231:61814c2f'
  sha256 '99aab3bedeeac9a3fc736d2313bfad7e4cb07a099cee59e4bd92e18da731cd52'

  # fournova-app-updates.s3.amazonaws.com/ was verified as official when first introduced to the cask
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
