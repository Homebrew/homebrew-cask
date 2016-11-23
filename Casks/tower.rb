cask 'tower' do
  version '2.5.3-337-441ac672'
  sha256 '3fd20f583f8f82f795fea2b3024049c34b98d78dad902e310a82f580aeb2b485'

  # fournova-app-updates.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower#{version.major}-mac/#{version.sub(%r{^[^\-]+\-}, '')}/Tower-#{version.major}-#{version.sub(%r{-[^-]+$}, '')}.zip"
  appcast "https://updates.fournova.com/updates/tower#{version.major}-mac/stable",
          checkpoint: '85f9fe9d7494acfbed27cd6abb5c323a633cff2cfc12d072a592e6519f79f6cc'
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
