cask 'wordpresscom' do
  version '4.0.0'
  sha256 'c55992a869274a1f6d7509f27c15000d3b8842d10584a214570a90c83024f93d'

  url "https://public-api.wordpress.com/rest/v1.1/desktop/osx/download?type=app&ref=update&version=#{version}"
  appcast 'https://public-api.wordpress.com/rest/v1.1/desktop/osx/version?compare=0.1.0&channel=stable'
  name 'WordPress.com'
  homepage 'https://apps.wordpress.com/desktop/'

  app 'WordPress.com.app'
end
