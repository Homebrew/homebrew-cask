cask 'wordpresscom' do
  version '3.3.0'
  sha256 '8bcd0c163cdaf99ccaddbb98f8cd051e4778b886ebe8bff01d83487906551684'

  url "https://public-api.wordpress.com/rest/v1.1/desktop/osx/download?type=app&ref=update&version=#{version}"
  appcast 'https://public-api.wordpress.com/rest/v1.1/desktop/osx/version?compare=0.1.0&channel=stable'
  name 'WordPress.com'
  homepage 'https://apps.wordpress.com/desktop/'

  app 'WordPress.com.app'
end
