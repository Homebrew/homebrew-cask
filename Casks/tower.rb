cask 'tower' do
  version '3.0.1-153,f8ad1b48'
  sha256 '3f73cfe5d299f2406b9573f71df794ea4eb3e83607dc852fa58a6eb5733c3abe'

  # fournova-app-updates.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower#{version.major}-mac/#{version.split('-').last.tr(',', '-')}/Tower-#{version.before_comma}.zip"
  appcast "https://updates.fournova.com/updates/tower#{version.major}-mac/stable"
  name 'Tower'
  homepage 'https://www.git-tower.com/'

  app 'Tower.app'
  binary "#{appdir}/Tower.app/Contents/MacOS/gittower"

  zap trash: [
               "~/Library/Application Support/com.fournova.Tower#{version.major}",
               "~/Library/Caches/com.fournova.Tower#{version.major}",
               "~/Library/Preferences/com.fournova.Tower#{version.major}.plist",
             ]
end
