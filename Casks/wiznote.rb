cask 'wiznote' do
  version '2.6.0,2018-06-15'
  sha256 '4ed19bf7cf1c69dcf648aa82a0432b18a77693a13b9b6dd832300d76fa38000b'

  url "https://get.wiz.cn/wiznote-macos-#{version.after_comma}.dmg"
  name 'WizNote'
  homepage 'https://www.wiz.cn/wiznote-mac.html'

  app 'WizNote.app'
end
