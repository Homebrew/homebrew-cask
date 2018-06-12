cask 'typinator' do
  version '7.5'
  sha256 '9d136970946511132a7af1ebbdfa1aa3310a2e1e122fc1a54a5b16f7c99cf020'

  url "http://www.ergonis.com/downloads/products/typinator/Typinator#{version.no_dots}-Install.dmg",
      user_agent: :fake
  appcast 'http://www.ergonis.com/products/typinator/history.html'
  name 'Typinator'
  homepage 'http://www.ergonis.com/'

  accessibility_access true

  app 'Typinator.app'
end
