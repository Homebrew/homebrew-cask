cask 'wiznote' do
  version '2015-12-03'
  sha256 'b1db69a400712c9e750bde91fab7382935ac6cb95d081c8cac1872b2e59e26a1'

  url "http://release.wiz.cn/wiznote-macos-#{version}.dmg"
  name 'WizNote'
  homepage 'http://www.wiz.cn/wiznote-mac.html'
  license :gratis

  app 'WizNote.app'
end
