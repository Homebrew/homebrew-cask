cask 'yemuzip' do
  version :latest
  sha256 :no_check

  url 'http://www.yellowmug.com/download/YemuZip.dmg'
  appcast 'http://yellowmug.com/yemuzip/appcast.xml',
          :checkpoint => 'f10fe5f89839cda39543f15caa8cd985ec0ce6a7c4ff082eb39135fe4ea2e2eb'
  name 'YemuZip'
  homepage 'http://www.yellowmug.com/yemuzip'
  license :commercial

  app 'YemuZip.app'
end
