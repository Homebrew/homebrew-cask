cask 'wordpresscom' do
  version '4.7.0'
  sha256 '417449d249a7448dbbf002a13c74c5fce2894a8e995bb9b90e01a9fcd934c80e'

  url "https://public-api.wordpress.com/rest/v1.1/desktop/osx/download?type=app&ref=update&version=#{version}"
  appcast 'https://public-api.wordpress.com/rest/v1.1/desktop/osx/version?compare=0.1.0&channel=stable'
  name 'WordPress.com'
  homepage 'https://apps.wordpress.com/desktop/'

  app 'WordPress.com.app'

  zap trash: [
               '~/Library/Application Support/Wordpress.com',
               '~/Library/Preferences/com.automattic.wordpress.helper.plist',
               '~/Library/Preferences/com.automattic.wordpress.plist',
               '~/Library/Saved Application State/com.automattic.wordpress.savedState',
             ]
end
