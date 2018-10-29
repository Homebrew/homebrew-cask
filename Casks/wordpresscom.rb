cask 'wordpresscom' do
  version '3.6.0'
  sha256 '7aa19df106cbd29a151b232085334ef0b56a26e1947098522f843a2db0471b8d'

  url "https://public-api.wordpress.com/rest/v1.1/desktop/osx/download?type=dmg&ref=update&version=#{version}"
  appcast 'https://public-api.wordpress.com/rest/v1.1/desktop/osx/version?compare=0.1.0&channel=stable'
  name 'WordPress.com'
  homepage 'https://apps.wordpress.com/desktop/'

  app 'WordPress.com.app'
end
