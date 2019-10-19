cask 'wiznote' do
  version '2.7.8,2019-10-17'
  sha256 'e4af518847c6400416cd367833f1add767a0bc997d924acbda8094cc6854abcc'

  url "https://get.wiz.cn/wiznote-macos-#{version.after_comma}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://url.wiz.cn/u/mac',
          configuration: version.after_comma
  name 'WizNote'
  homepage 'https://www.wiz.cn/wiznote-mac.html'

  app 'WizNote.app'
end
