cask 'tower' do
  version '2.4.0-315-880ab34c'
  sha256 '20a0aff8acad6bffe84914601ded9a39143aee86db2ca4a84d01951ee0e0367b'

  # fournova-app-updates.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower#{version.major}-mac/#{version.sub(%r{^[^\-]+\-}, '')}/Tower-#{version.major}-#{version.sub(%r{-[^-]+$}, '')}.zip"
  appcast "https://updates.fournova.com/updates/tower#{version.major}-mac/stable",
          checkpoint: '208d32f8a573315ceffcd490e4524ff3d389781289df8a9cd2cf3779cd8f88e3'
  name 'Tower'
  homepage 'https://www.git-tower.com/'
  license :commercial

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
