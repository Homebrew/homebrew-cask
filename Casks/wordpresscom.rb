cask 'wordpresscom' do
  version '3.0.0'
  sha256 'fb24600098bc5c5b2dc4f50e8dc63b5fc81a1b0d3ddcf123f80434618b304626'

  url "https://public-api.wordpress.com/rest/v1.1/desktop/osx/download?type=app&ref=update&version=#{version}"
  appcast 'https://public-api.wordpress.com/rest/v1.1/desktop/osx/version?compare=0.1.0&channel=stable',
          checkpoint: 'e3347a2f3f8da08899fc62f01649265c3d5ef56088b7a0bdd4ab51be1f7f806a'
  name 'WordPress.com'
  homepage 'https://apps.wordpress.com/desktop/'

  app 'WordPress.com.app'
end
