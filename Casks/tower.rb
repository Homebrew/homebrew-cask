cask 'tower' do
  version '3.6.0,205:1262a183'
  sha256 '704998cdd473860d2e90eaaa774c4c9011a54712f844b8d658670e8cd12dd8cd'

  # fournova-app-updates.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower#{version.major}-mac/#{version.after_comma.before_colon}-#{version.after_colon}/Tower-#{version.before_comma}-#{version.after_comma.before_colon}.zip"
  appcast "https://updates.fournova.com/updates/tower#{version.major}-mac/stable"
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
