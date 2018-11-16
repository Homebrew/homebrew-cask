cask 'wordpresscom' do
  version '3.7.0'
  sha256 '0919bf710ba47769dafd89b752c95af419930d2ca04afdedb0864b6d11027f32'

  url "https://public-api.wordpress.com/rest/v1.1/desktop/osx/download?type=dmg&ref=update&version=#{version}"
  appcast 'https://public-api.wordpress.com/rest/v1.1/desktop/osx/version?compare=0.1.0&channel=stable'
  name 'WordPress.com'
  homepage 'https://apps.wordpress.com/desktop/'

  app 'WordPress.com.app'
end
