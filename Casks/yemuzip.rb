cask 'yemuzip' do
  version :latest
  sha256 :no_check

  url 'http://www.yellowmug.com/download/YemuZip.dmg'
  appcast 'http://yellowmug.com/yemuzip/appcast.xml',
          :sha256 => '7c7ee841dcda71460211ecb5896faa53f14733e4dd594ffe8d75b77070e521c8'
  name 'YemuZip'
  homepage 'http://www.yellowmug.com/yemuzip'
  license :commercial

  app 'YemuZip.app'
end
