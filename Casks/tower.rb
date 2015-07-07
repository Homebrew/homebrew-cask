cask :v1 => 'tower' do
  version '2.2.2-284'
  sha256 'f2336a0565a99436b9159b7d066f30f136b6fe72f803ab354e678fe0fbc351fd'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower2-mac/284-05b8a99e/Tower-2-#{version}.zip"
  appcast 'https://updates.fournova.com/updates/tower2-mac/stable'
  name 'Tower'
  homepage 'http://www.git-tower.com/'
  license :commercial

  app 'Tower.app'
  binary 'Tower.app/Contents/MacOS/gittower'

  zap :delete => [
                  '~/Library/Application Support/com.fournova.Tower2',
                  '~/Library/Caches/com.fournova.Tower2',
                  '~/Library/Preferences/com.fournova.Tower2.plist',
                 ]

  caveats do
    files_in_usr_local
  end
end
