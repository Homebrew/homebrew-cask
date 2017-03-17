cask 'ultraedit' do
  version '16.10.0.22'
  sha256 '33e5585ca04eb9f5f895fd2b22c3167adde568b47c9c9552240cb898d4d51797'

  url  "http://www.ultraedit.com/files/uex/OSX/UltraEdit_#{version}.dmg"
  name 'UltraEdit'
  homepage 'http://www.ultraedit.com/products/ultraedit.html'

  app 'UltraEdit.app'
end
