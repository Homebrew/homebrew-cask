cask 'wordpresscom' do
  version '5.1.0'
  sha256 '3b9fa9a302445e52805c5d00e154f964f5cd397095206a17775ab8c4ab68fbb5'

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
