cask 'wiznote' do
  version '2.5.5,2017-06-19'
  sha256 'c2b9e1553312fd098a01449dafab16f3d3fecfe3ca0cb52a909b748f41841755'

  url "http://get.wiz.cn/wiznote-macos-#{version.after_comma}.dmg"
  name 'WizNote'
  homepage 'https://www.wiz.cn/wiznote-mac.html'

  app 'WizNote.app'
end
