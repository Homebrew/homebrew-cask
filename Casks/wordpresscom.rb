cask 'wordpresscom' do
  version '3.4.0'
  sha256 '8eb3ff1ce27e959e7f01c801e3718c5581506a2d61a8d80e2d5c0f8cc52e32bf'

  url "https://public-api.wordpress.com/rest/v1.1/desktop/osx/download?type=dmg&ref=update&version=#{version}"
  appcast 'https://public-api.wordpress.com/rest/v1.1/desktop/osx/version?compare=0.1.0&channel=stable'
  name 'WordPress.com'
  homepage 'https://apps.wordpress.com/desktop/'

  app 'WordPress.com.app'
end
