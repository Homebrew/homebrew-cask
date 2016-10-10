cask 'tower' do
  version '2.5.0-327-cedf62ec'
  sha256 '3b7803420ef379b07db09566aa3a2d20f2eb3423427802be6a6efd6d076ff4c8'

  # fournova-app-updates.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower#{version.major}-mac/#{version.sub(%r{^[^\-]+\-}, '')}/Tower-#{version.major}-#{version.sub(%r{-[^-]+$}, '')}.zip"
  appcast "https://updates.fournova.com/updates/tower#{version.major}-mac/stable",
          checkpoint: '00618799a20d9cd61a71dd1ed4826d014e19fd65d848b1943187f1f8276f23fe'
  name 'Tower'
  homepage 'https://www.git-tower.com/'

  app 'Tower.app'
  binary "#{appdir}/Tower.app/Contents/MacOS/gittower"

  zap delete: [
                "~/Library/Application Support/com.fournova.Tower#{version.major}",
                "~/Library/Caches/com.fournova.Tower#{version.major}",
                "~/Library/Preferences/com.fournova.Tower#{version.major}.plist",
              ]

  caveats do
    files_in_usr_local
  end
end
