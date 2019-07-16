cask 'wordpresscom' do
  version '4.2.0'
  sha256 '46d56c1d7f6f930ae6cf6a266acbbb6c05d21602d7f8874f982795b5955a285b'

  url "https://public-api.wordpress.com/rest/v1.1/desktop/osx/download?type=app&ref=update&version=#{version}"
  appcast 'https://public-api.wordpress.com/rest/v1.1/desktop/osx/version?compare=0.1.0&channel=stable'
  name 'WordPress.com'
  homepage 'https://apps.wordpress.com/desktop/'

  app 'WordPress.com.app'
end
