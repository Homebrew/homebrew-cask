cask 'tower' do
  version '2.3.4-305-ab500cf4'
  sha256 '30fc4460975cb6bc37b7abb1cb742c59172cc672c90708f9d7d08fc6c4a32dd8'

  # amazonaws.com/apps/tower2-mac was verified as official when first introduced to the cask
  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower#{version.major}-mac/#{version.sub(%r{^.*?-}, '')}/Tower-#{version.to_i}-#{version.sub(%r{-[^-]*$}, '')}.zip"
  appcast "https://updates.fournova.com/updates/tower#{version.major}-mac/stable",
          checkpoint: '496cf7abea4426c9fd7396b64e0a717e8a2b67eb258e89a0a0a05a2a6bd390a7'
  name 'Tower'
  homepage 'https://www.git-tower.com/'
  license :commercial

  app 'Tower.app'
  binary 'Tower.app/Contents/MacOS/gittower'

  zap delete: [
                "~/Library/Application Support/com.fournova.Tower#{version.major}",
                "~/Library/Caches/com.fournova.Tower#{version.major}",
                "~/Library/Preferences/com.fournova.Tower#{version.major}.plist",
              ]

  caveats do
    files_in_usr_local
  end
end
