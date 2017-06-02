cask 'wiznote' do
  version '2.5.3,2017-04-27'
  sha256 '946015b4db3c935ac66dfd9fcd59956d9e6ad309b1d1b07a6d23ca74efe92475'

  url "http://get.wiz.cn/wiznote-macos-#{version.after_comma}.dmg"
  name 'WizNote'
  homepage 'http://www.wiz.cn/wiznote-mac.html'

  app 'WizNote.app'
end
