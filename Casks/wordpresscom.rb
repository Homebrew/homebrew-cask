cask 'wordpresscom' do
  version '4.4.2'
  sha256 '1d06f802eb0854064ee19048acc4ddf142488c246125bfb29fbcbe07c107668a'

  url "https://public-api.wordpress.com/rest/v1.1/desktop/osx/download?type=app&ref=update&version=#{version}"
  appcast 'https://public-api.wordpress.com/rest/v1.1/desktop/osx/version?compare=0.1.0&channel=stable'
  name 'WordPress.com'
  homepage 'https://apps.wordpress.com/desktop/'

  app 'WordPress.com.app'
end
