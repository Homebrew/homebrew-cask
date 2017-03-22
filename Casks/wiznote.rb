cask 'wiznote' do
  version '2.4.3,2017-01-03'
  sha256 '399b7989bdc0e8ba3a646f409dd9ddd301cb34bb4a1cff8fc25d1f861909560d'

  url "http://get.wiz.cn/wiznote-macos-#{version.after_comma}.dmg"
  name 'WizNote'
  homepage 'http://www.wiz.cn/wiznote-mac.html'

  app 'WizNote.app'
end
