cask 'wordpresscom' do
  version '4.4.0'
  sha256 'ccea3f3701a55c0520ca756cb8537f92400539268a20b5295ec44abed5078638'

  url "https://public-api.wordpress.com/rest/v1.1/desktop/osx/download?type=app&ref=update&version=#{version}"
  appcast 'https://public-api.wordpress.com/rest/v1.1/desktop/osx/version?compare=0.1.0&channel=stable'
  name 'WordPress.com'
  homepage 'https://apps.wordpress.com/desktop/'

  app 'WordPress.com.app'
end
