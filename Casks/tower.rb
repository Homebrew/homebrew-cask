cask :v1 => 'tower' do
  version :latest
  sha256 :no_check

  url 'https://www.git-tower.com/download'
  appcast 'https://updates.fournova.com/updates/tower2-mac/stable'
  name 'Tower'
  homepage 'http://www.git-tower.com/'
  license :commercial

  app 'Tower.app'
  binary 'Tower.app/Contents/MacOS/gittower'

  zap :delete => [
                  '~/Library/Application Support/com.fournova.Tower2',
                  '~/Library/Preferences/com.fournova.Tower2.plist',
                 ]
  
  caveats do
    files_in_usr_local
  end
end
