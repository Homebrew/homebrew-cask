cask 'wiznote' do
  version '2.7.1,2019-03-13'
  sha256 '9b7ba3700406297743c9bafa333b5885d342ade338eeae4d355e5985876bcb3b'

  url "https://get.wiz.cn/wiznote-macos-#{version.after_comma}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=http://url.wiz.cn/u/mac'
  name 'WizNote'
  homepage 'https://www.wiz.cn/wiznote-mac.html'

  app 'WizNote.app'
end
