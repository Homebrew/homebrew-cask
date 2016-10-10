cask 'wiznote' do
  version '2016-07-18'
  sha256 'a171e87b3b2bd314b5812a576e992fd07eea93233ceeb788da8dc8abb0d063ef'

  url "http://release.wiz.cn/wiznote-macos-#{version}.dmg"
  name 'WizNote'
  homepage 'http://www.wiz.cn/wiznote-mac.html'

  app 'WizNote.app'
end
