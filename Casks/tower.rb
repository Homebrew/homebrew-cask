cask 'tower' do
  version '3.5.0-192,cb3edfff'
  sha256 '6f054be142460fb27769cb247e56c861ff69a268643559d8eea296d88000867d'

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
