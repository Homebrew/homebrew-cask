cask 'wordpresscom' do
  version '4.3.0'
  sha256 'cc8313de61e0045ac48949a36232752734c07e25bdeddb5ea5ae18c9964ec0dd'

  url "https://public-api.wordpress.com/rest/v1.1/desktop/osx/download?type=app&ref=update&version=#{version}"
  appcast 'https://public-api.wordpress.com/rest/v1.1/desktop/osx/version?compare=0.1.0&channel=stable'
  name 'WordPress.com'
  homepage 'https://apps.wordpress.com/desktop/'

  app 'WordPress.com.app'
end
