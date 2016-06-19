cask 'wordpresscom' do
  version '1.3.1'
  sha256 '7e84bf8acd85fe9d8074ee74b42f5058ea043a1405e916538fa625175fb3cfea'

  url "https://public-api.wordpress.com/rest/v1.1/desktop/osx/download?type=app&ref=update&version=#{version}"
  appcast 'https://public-api.wordpress.com/rest/v1.1/desktop/osx/version?compare=0.1.0&channel=stable',
          checkpoint: 'fb28f551edceeb853f8fcb40b827c8b7f412a95918d605d46101c0bcbec33cbf'
  name 'WordPress.com'
  homepage 'https://desktop.wordpress.com/'
  license :gpl

  app 'WordPress.com.app'
end
