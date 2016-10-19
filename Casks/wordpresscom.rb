cask 'wordpresscom' do
  version '1.8.0'
  sha256 'd4d1bc63dc862d8c5e1fb59a6bcd348711f4e46377038e3e13d986362bbe8889'

  url "https://public-api.wordpress.com/rest/v1.1/desktop/osx/download?type=app&ref=update&version=#{version}"
  appcast 'https://public-api.wordpress.com/rest/v1.1/desktop/osx/version?compare=0.1.0&channel=stable',
          checkpoint: '960cd9d04fc8be4d43d8ade4e64236116b2f050db4a7ab15aed059f390a2865c'
  name 'WordPress.com'
  homepage 'https://desktop.wordpress.com/'

  app 'WordPress.com.app'
end
