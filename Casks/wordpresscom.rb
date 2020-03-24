cask 'wordpresscom' do
  version '5.0.0'
  sha256 '64a5313011b22d13bb825eb00cee0b3542912d7002fadd2ca1cac780b726fb58'

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
