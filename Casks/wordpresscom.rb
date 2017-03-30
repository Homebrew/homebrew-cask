cask 'wordpresscom' do
  version '2.2.0'
  sha256 '17e0c52cd2d157e56586d1f51f20c6ac073bf452e6cc49e55e2cf80078d2330a'

  url "https://public-api.wordpress.com/rest/v1.1/desktop/osx/download?type=app&ref=update&version=#{version}"
  appcast 'https://public-api.wordpress.com/rest/v1.1/desktop/osx/version?compare=0.1.0&channel=stable',
          checkpoint: 'e38a213a734691af97f6e35d5326b87260fbfa7c3bf4fa43b720ab857d372659'
  name 'WordPress.com'
  homepage 'https://apps.wordpress.com/desktop/'

  app 'WordPress.com.app'
end
