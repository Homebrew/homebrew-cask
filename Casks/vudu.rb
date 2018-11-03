cask 'vudu' do
  version :latest
  sha256 :no_check

  url 'http://www.vudu.com/flash/VUDUToGo.dmg'
  name 'VUDUToGo'
  homepage 'http://www.vudu.com/'

  depends_on cask: 'adobe-air'

  app 'Install VUDUToGo.app/Contents/Resources/VUDUToGo', target: 'VUDUToGo.app'
end
