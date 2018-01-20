cask 'wordpresscom' do
  version '3.1.0'
  sha256 '794184637abe04bee5a193b3b085c29c25d632b26b1a53413d0085d65733f48f'

  url "https://public-api.wordpress.com/rest/v1.1/desktop/osx/download?type=app&ref=update&version=#{version}"
  appcast 'https://public-api.wordpress.com/rest/v1.1/desktop/osx/version?compare=0.1.0&channel=stable',
          checkpoint: 'f8651571a5797bc35fb9ace9feae6ca25c8253d277ae650c287971fada15dfbc'
  name 'WordPress.com'
  homepage 'https://apps.wordpress.com/desktop/'

  app 'WordPress.com.app'
end
