class Tower < Cask
  version 'latest'
  sha256 :no_check

  url 'https://www.git-tower.com/download'
  appcast 'https://updates.fournova.com/updates/tower2-mac/stable'
  homepage 'http://www.git-tower.com/'

  app 'Tower.app'
end
