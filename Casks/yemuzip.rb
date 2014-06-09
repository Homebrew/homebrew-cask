class Yemuzip < Cask
  url 'http://www.yellowmug.com/download/YemuZip.dmg'
  appcast 'http://yellowmug.com/yemuzip/appcast.xml'
  homepage 'http://www.yellowmug.com/yemuzip'
  version 'latest'
  sha256 :no_check
  link 'YemuZip.app'
end
