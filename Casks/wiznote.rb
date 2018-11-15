cask 'wiznote' do
  version '2.6.7,2018-11-13'
  sha256 'ba77c6b099cc520446912ce09d93eda729cf7498019de38a3c2c7c357167db4b'

  url "https://get.wiz.cn/wiznote-macos-#{version.after_comma}.dmg"
  name 'WizNote'
  homepage 'https://www.wiz.cn/wiznote-mac.html'

  app 'WizNote.app'
end
