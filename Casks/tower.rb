cask 'tower' do
  version '2.6.4-357,a5932bd4'
  sha256 'c969606ee68e4094785918aeefcd8c1c94b3e23934658675ccb36e5500d6078d'

  # fournova-app-updates.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower#{version.major}-mac/#{version.split('-').last.tr(',', '-')}/Tower-#{version.major}-#{version.before_comma}.zip"
  appcast "https://updates.fournova.com/updates/tower#{version.major}-mac/stable",
          checkpoint: '5410b13eb6a6c668df25a46715b22c72c5f7055b822acb57afd57af1b238cde4'
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
