cask 'wordpresscom' do
  version '4.4.1'
  sha256 '6f86aa1301ff725e5d44ad0267d70acfe199c8728e33ebf471bb75de5c707421'

  url "https://public-api.wordpress.com/rest/v1.1/desktop/osx/download?type=app&ref=update&version=#{version}"
  appcast 'https://public-api.wordpress.com/rest/v1.1/desktop/osx/version?compare=0.1.0&channel=stable'
  name 'WordPress.com'
  homepage 'https://apps.wordpress.com/desktop/'

  app 'WordPress.com.app'
end
