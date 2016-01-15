cask 'yemuzip' do
  version :latest
  sha256 :no_check

  url 'http://www.yellowmug.com/download/YemuZip.dmg'
  appcast 'http://yellowmug.com/yemuzip/appcast.xml',
          :checkpoint => '2ede15a2a242f583876e6e5f5957368819435adff6347431862c5a45ee7b2a42'
  name 'YemuZip'
  homepage 'http://www.yellowmug.com/yemuzip'
  license :commercial

  app 'YemuZip.app'
end
