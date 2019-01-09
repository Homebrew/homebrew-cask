cask 'wordpresscom' do
  version '3.8.0'
  sha256 '471be5e96058a8550f045e4419a577a55fc7581d2d62ca14ae25c06bf96290ef'

  url "https://public-api.wordpress.com/rest/v1.1/desktop/osx/download?type=dmg&ref=update&version=#{version}"
  appcast 'https://public-api.wordpress.com/rest/v1.1/desktop/osx/version?compare=0.1.0&channel=stable'
  name 'WordPress.com'
  homepage 'https://apps.wordpress.com/desktop/'

  app 'WordPress.com.app'
end
