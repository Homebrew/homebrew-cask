cask 'tower' do
  version '2.5.2-334-bc7e6fb8'
  sha256 '16f84397d3d323c1e810bf7421d429bde37c04e261aeaf6a35d1037c17d5607f'

  # fournova-app-updates.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower#{version.major}-mac/#{version.sub(%r{^[^\-]+\-}, '')}/Tower-#{version.major}-#{version.sub(%r{-[^-]+$}, '')}.zip"
  appcast "https://updates.fournova.com/updates/tower#{version.major}-mac/stable",
          checkpoint: 'e3301dc2ed75b2d55109fb79e3e3fe83a0d3d88ce75b97ae8d6f559fd02a20e2'
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
