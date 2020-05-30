cask 'wordpresscom' do
  version '5.2.0'
  sha256 '4c40595a2220f5fa38e98e9fc108b9344009989fd3e33f03879c4742017d5b12'

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
