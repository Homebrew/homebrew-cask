cask 'wiznote' do
  version '2.5.8,2018-01-12'
  sha256 '5428cf52af8544c741009d9b56fc0264b53aa4bd7b6ee8b8a08160fa9a546d3b'

  url "https://get.wiz.cn/wiznote-macos-#{version.after_comma}.dmg"
  name 'WizNote'
  homepage 'https://www.wiz.cn/wiznote-mac.html'

  app 'WizNote.app'
end
