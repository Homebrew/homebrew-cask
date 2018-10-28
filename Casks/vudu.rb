cask 'vudu' do
  version :latest
  sha256 '43397db0a86b757d5301ed0466563871fec67aea1ff81f65c2a06cf5cb80c5f7'

  url 'http://www.vudu.com/flash/VUDUToGo.dmg'
  name 'VUDUToGo'
  homepage 'http://www.vudu.com/'

  depends_on cask: 'adobe-air'

  app 'Install VUDUToGo.app/Contents/Resources/VUDUToGo', target: 'VUDUToGo.app'
end
