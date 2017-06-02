cask 'wordpresscom' do
  version '2.5.0'
  sha256 '8f6a520d3ffbdc65fa21f76a8f6347c049ca35172003a6d3c301d85e9843864c'

  url "https://public-api.wordpress.com/rest/v1.1/desktop/osx/download?type=app&ref=update&version=#{version}"
  appcast 'https://public-api.wordpress.com/rest/v1.1/desktop/osx/version?compare=0.1.0&channel=stable',
          checkpoint: 'd4040433b138f7d6fae6e70ff560b01bef5a40118f2309d49c4f313227a8f14e'
  name 'WordPress.com'
  homepage 'https://apps.wordpress.com/desktop/'

  app 'WordPress.com.app'
end
