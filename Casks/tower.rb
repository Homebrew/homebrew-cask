cask 'tower' do
  version '3.0.2-154,eea196a9'
  sha256 '2a4c6e14ac727d58e618482b6224d99d8dce4d9c45fab0531a0c3463a5ff3333'

  # fournova-app-updates.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower#{version.major}-mac/#{version.split('-').last.tr(',', '-')}/Tower-#{version.before_comma}.zip"
  appcast "https://updates.fournova.com/updates/tower#{version.major}-mac/stable"
  name 'Tower'
  homepage 'https://www.git-tower.com/'

  auto_updates true

  app 'Tower.app'
  binary "#{appdir}/Tower.app/Contents/MacOS/gittower"

  zap trash: [
               "~/Library/Application Support/com.fournova.Tower#{version.major}",
               "~/Library/Caches/com.fournova.Tower#{version.major}",
               "~/Library/Preferences/com.fournova.Tower#{version.major}.plist",
             ]
end
