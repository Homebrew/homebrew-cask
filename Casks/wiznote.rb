cask 'wiznote' do
  version '2.4.4,2017-03-14'
  sha256 '35090576e94ad67f84c213571818fe44cf45ebc0ad1a977a8a53b2a0d1f95ea6'

  url "http://get.wiz.cn/wiznote-macos-#{version.after_comma}.dmg"
  name 'WizNote'
  homepage 'http://www.wiz.cn/wiznote-mac.html'

  app 'WizNote.app'
end
