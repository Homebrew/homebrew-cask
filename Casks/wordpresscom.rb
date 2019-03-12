cask 'wordpresscom' do
  version '3.9.0'
  sha256 '46bbe0d67c1440ea46063b4f1345592cdef235128ae537be1363309f5a47657b'

  url "https://public-api.wordpress.com/rest/v1.1/desktop/osx/download?type=app&ref=update&version=#{version}"
  appcast 'https://public-api.wordpress.com/rest/v1.1/desktop/osx/version?compare=0.1.0&channel=stable'
  name 'WordPress.com'
  homepage 'https://apps.wordpress.com/desktop/'

  app 'WordPress.com.app'
end
