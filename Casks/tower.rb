cask 'tower' do
  version '3.2.1-164,d731da08'
  sha256 '37b634d429c3d047b93f116d967702a8472edeef3eab20c0efb6835027675e4f'

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
