cask 'wiznote' do
  version '2.5.0,2017-04-19'
  sha256 'c7d318b6632d6477ee6342b9a6be1aff9749d0b6dee2196c4fdc7349a90a1ecd'

  url "http://get.wiz.cn/wiznote-macos-#{version.after_comma}.dmg"
  name 'WizNote'
  homepage 'http://www.wiz.cn/wiznote-mac.html'

  app 'WizNote.app'
end
