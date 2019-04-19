cask 'wiznote' do
  version '2.7.2,2019-04-16'
  sha256 'c12a79f12287013d9f817674d11c18e054ab82d3c55605db5d39d06267c2f3f9'

  url "https://get.wiz.cn/wiznote-macos-#{version.after_comma}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=http://url.wiz.cn/u/mac'
  name 'WizNote'
  homepage 'https://www.wiz.cn/wiznote-mac.html'

  app 'WizNote.app'
end
