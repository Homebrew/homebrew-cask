class Zepheer < Cask
  version 'latest'
  sha256 :no_check
  
  url 'http://candysquare.com/files/zepheer/Zepheer.dmg'
  appcast 'http://candysquare.com/files/zepheer/updates/appcast.xml'
  homepage 'http://candysquare.com/products/zepheer/'

  link 'Zepheer.app'
end
