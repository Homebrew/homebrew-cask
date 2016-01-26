cask 'yemuzip' do
  version '2.4.3'
  sha256 'f554c0ef41fe3fa0aa9d13663a8346db99c95e7108a200474918fe390076ca9c'

  url "http://yellowmug.com/download/YemuZip_#{version}.dmg"
  appcast 'http://yellowmug.com/yemuzip/appcast.xml',
          checkpoint: '2ede15a2a242f583876e6e5f5957368819435adff6347431862c5a45ee7b2a42'
  name 'YemuZip'
  homepage 'http://www.yellowmug.com/yemuzip'
  license :commercial

  app 'YemuZip.app'
end
