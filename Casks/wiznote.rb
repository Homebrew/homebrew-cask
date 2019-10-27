cask 'wiznote' do
  version '2.7.9,2019-10-21'
  sha256 'd9f089534ff54bce5af36f6caea347a15c94f78d320fffd5fe438ed2da5ad5d4'

  url "https://get.wiz.cn/wiznote-macos-#{version.after_comma}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://url.wiz.cn/u/mac',
          configuration: version.after_comma
  name 'WizNote'
  homepage 'https://www.wiz.cn/wiznote-mac.html'

  app 'WizNote.app'
end
