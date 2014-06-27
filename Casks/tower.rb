class Tower < Cask
  version 'latest'
  sha256 :no_check
  
  url 'https://www.git-tower.com/download'
  appcast 'https://macapps.fournova.com/tower1-1060/updates.xml'
  homepage 'http://www.git-tower.com/'

  link 'Tower.app'
end
