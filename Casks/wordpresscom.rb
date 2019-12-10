cask 'wordpresscom' do
  version '4.6.0'
  sha256 '99b514df700db3d0630d4288324eb4f8f035ae58f23b8e5be9cc0b20e2cea776'

  url "https://public-api.wordpress.com/rest/v1.1/desktop/osx/download?type=app&ref=update&version=#{version}"
  appcast 'https://public-api.wordpress.com/rest/v1.1/desktop/osx/version?compare=0.1.0&channel=stable'
  name 'WordPress.com'
  homepage 'https://apps.wordpress.com/desktop/'

  app 'WordPress.com.app'
end
