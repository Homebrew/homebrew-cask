cask 'wiznote' do
  version '2.8.6,2020-06-15'
  sha256 '64d4e6bc8cfdd96d62384cf741a3c6b4c6323b0c38da8ebc857890f377521151'

  url "https://get.wiz.cn/wiznote-macos-#{version.after_comma}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://url.wiz.cn/u/mac',
          must_contain: version.after_comma
  name 'WizNote'
  homepage 'https://www.wiz.cn/wiznote-mac.html'

  app 'WizNote.app'
end
