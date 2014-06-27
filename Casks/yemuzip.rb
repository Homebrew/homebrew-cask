class Yemuzip < Cask
  version 'latest'
  sha256 :no_check
  
  url 'http://www.yellowmug.com/download/YemuZip.dmg'
  appcast 'http://yellowmug.com/yemuzip/appcast.xml'
  homepage 'http://www.yellowmug.com/yemuzip'

  link 'YemuZip.app'
end
