cask :v1 => 'yemuzip' do
  version :latest
  sha256 :no_check

  url 'http://www.yellowmug.com/download/YemuZip.dmg'
  name 'YemuZip'
  appcast 'http://yellowmug.com/yemuzip/appcast.xml'
  homepage 'http://www.yellowmug.com/yemuzip'
  license :commercial

  app 'YemuZip.app'
end
