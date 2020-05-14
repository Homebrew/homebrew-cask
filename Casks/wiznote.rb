cask 'wiznote' do
  version '2.8.5,2020-04-22'
  sha256 'fc851924922d6a655e1c47091471024247d25c79a677638d5f940e3a986de988'

  url "https://get.wiz.cn/wiznote-macos-#{version.after_comma}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://url.wiz.cn/u/mac',
          configuration: version.after_comma
  name 'WizNote'
  homepage 'https://www.wiz.cn/wiznote-mac.html'

  app 'WizNote.app'
end
