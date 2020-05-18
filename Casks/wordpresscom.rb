cask 'wordpresscom' do
  version '5.1.1'
  sha256 'b606966c9ad16318166b5d500299b10a33d3e550278a425e5bbfb6d8230e8b3a'

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
