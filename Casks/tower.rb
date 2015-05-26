cask :v1 => 'tower' do
  version '2.2.1-277'
  sha256 'e8fd917eb00674b1a0db1a95165e12a782d2286ea631b7b19337b0ca54aff22a'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower2-mac/277-0be85680/Tower-2-#{version}.zip"
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
