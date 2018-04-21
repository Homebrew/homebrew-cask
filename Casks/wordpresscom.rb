cask 'wordpresscom' do
  version '3.2.0'
  sha256 'dc7c8c7d901f46b5b4c7cc95b77dde2ef7edb47d0a084853e6c37e8270f66e5d'

  url "https://public-api.wordpress.com/rest/v1.1/desktop/osx/download?type=app&ref=update&version=#{version}"
  appcast 'https://public-api.wordpress.com/rest/v1.1/desktop/osx/version?compare=0.1.0&channel=stable',
          checkpoint: '42bc81c9b3bce7d8e10eeae6bb45edb3291ea8e7810aebff12b50df6117500ef'
  name 'WordPress.com'
  homepage 'https://apps.wordpress.com/desktop/'

  app 'WordPress.com.app'
end
