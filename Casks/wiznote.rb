cask 'wiznote' do
  version '2.5.6,2017-08-09'
  sha256 '8efbec9678b1f87d04e50e5ffea0db1909eba98736b3a2d0a91e00351ac539a9'

  url "http://get.wiz.cn/wiznote-macos-#{version.after_comma}.dmg"
  name 'WizNote'
  homepage 'https://www.wiz.cn/wiznote-mac.html'

  app 'WizNote.app'
end
