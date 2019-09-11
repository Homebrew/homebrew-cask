cask 'wiznote' do
  version '2.7.6,2019-07-26'
  sha256 '453441c23b5a5a73cc65c92ad44e7211a03e7407ca53ae305533e0d8c5702ab3'

  url "https://get.wiz.cn/wiznote-macos-#{version.after_comma}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=http://url.wiz.cn/u/mac',
          configuration: version.after_comma
  name 'WizNote'
  homepage 'https://www.wiz.cn/wiznote-mac.html'

  app 'WizNote.app'
end
