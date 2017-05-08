cask 'wordpresscom' do
  version '2.3.0'
  sha256 '95e6faa4d81c7bb7b70114e3094e0a78dcd3400af3525d425c3d3214c519e11f'

  url "https://public-api.wordpress.com/rest/v1.1/desktop/osx/download?type=app&ref=update&version=#{version}"
  appcast 'https://public-api.wordpress.com/rest/v1.1/desktop/osx/version?compare=0.1.0&channel=stable',
          checkpoint: '7ef15118771d0d3f3a7fa3120c86f3d440b1284afefb5cbcbbe2f87d32fffeb1'
  name 'WordPress.com'
  homepage 'https://apps.wordpress.com/desktop/'

  app 'WordPress.com.app'
end
