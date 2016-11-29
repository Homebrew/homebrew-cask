cask 'wiznote' do
  version '2.4.0,2016-11-18'
  sha256 'aeb5363c751861036584beadfeab61a27be44f177c588941d55e4d2d6c14591b'

  url "http://release.wiz.cn/wiznote-macos-#{version.after_comma}.dmg"
  name 'WizNote'
  homepage 'http://www.wiz.cn/wiznote-mac.html'

  app 'WizNote.app'
end
