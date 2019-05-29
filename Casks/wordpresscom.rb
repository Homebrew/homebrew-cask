cask 'wordpresscom' do
  version '4.1.0'
  sha256 '75ad26ede927a5f3d796b7d9525ec59ffa76f2a64cfc0088a6ad0a1a9b31d2e7'

  url "https://public-api.wordpress.com/rest/v1.1/desktop/osx/download?type=app&ref=update&version=#{version}"
  appcast 'https://public-api.wordpress.com/rest/v1.1/desktop/osx/version?compare=0.1.0&channel=stable'
  name 'WordPress.com'
  homepage 'https://apps.wordpress.com/desktop/'

  app 'WordPress.com.app'
end
