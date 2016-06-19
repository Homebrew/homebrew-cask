cask 'wordpresscom' do
  version '1.3.4'
  sha256 '39c8c38a35d7e764d4ebd6e2f42c01b13549b307f476bd3dbafac55e1a08d426'

  url "https://public-api.wordpress.com/rest/v1.1/desktop/osx/download?type=app&ref=update&version=#{version}"
  appcast 'https://public-api.wordpress.com/rest/v1.1/desktop/osx/version?compare=0.1.0&channel=stable',
          checkpoint: '984154ebbf1cd47c12c87a4620a463050c6e42cc3046f8568502cdfe124804ab'
  name 'WordPress.com'
  homepage 'https://desktop.wordpress.com/'
  license :gpl

  app 'WordPress.com.app'
end
