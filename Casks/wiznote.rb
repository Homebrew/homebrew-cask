cask 'wiznote' do
  version '2.5.7,2017-08-17'
  sha256 '5611e0bf905e63e3ffb1c1d00dd262aae94689af80a7ec221ad80efa0c2a4396'

  url "https://get.wiz.cn/wiznote-macos-#{version.after_comma}.dmg"
  name 'WizNote'
  homepage 'https://www.wiz.cn/wiznote-mac.html'

  app 'WizNote.app'
end
