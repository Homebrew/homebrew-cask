cask 'wordpresscom' do
  version '1.2.5'
  sha256 '88a2392a2161dde2aaae1d362932077031b8d6f04d2f33dc53ad5caa700a7781'

  url "https://public-api.wordpress.com/rest/v1.1/desktop/osx/download?type=app&ref=update&version=#{version}"
  appcast 'https://public-api.wordpress.com/rest/v1.1/desktop/osx/version?compare=0.1.0&channel=stable',
          checkpoint: 'bad67ad792b1fa3e71d696b7b45cd1ba7b12973b52a4f396f9ca969c2a66e46d'
  name 'WordPress.com'
  homepage 'https://desktop.wordpress.com/'
  license :gpl

  app 'WordPress.com.app'
end
