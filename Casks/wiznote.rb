cask 'wiznote' do
  version '2.6.1,2018-08-20'
  sha256 'd6e01cd6063f1aa0c13e6721d5243a08ce91671e2ab5324ba735f2b00ed0da2f'

  url "https://get.wiz.cn/wiznote-macos-#{version.after_comma}.dmg"
  name 'WizNote'
  homepage 'https://www.wiz.cn/wiznote-mac.html'

  app 'WizNote.app'
end
