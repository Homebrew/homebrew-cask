cask 'wordpresscom' do
  version '3.5.0'
  sha256 'ebf5d2cadec6a3278694159c612eeafa6d0847eaf04e1a3b1d564368db7343f9'

  url "https://public-api.wordpress.com/rest/v1.1/desktop/osx/download?type=dmg&ref=update&version=#{version}"
  appcast 'https://public-api.wordpress.com/rest/v1.1/desktop/osx/version?compare=0.1.0&channel=stable'
  name 'WordPress.com'
  homepage 'https://apps.wordpress.com/desktop/'

  app 'WordPress.com.app'
end
