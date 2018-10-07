cask 'typinator' do
  version '7.7'
  sha256 'd5ed77655a728b25011a634c5f5b06fd120a27cba7d5c1742ea2d5e7d653203a'

  url "https://www.ergonis.com/downloads/products/typinator/Typinator#{version.no_dots}-Install.dmg",
      user_agent: :fake
  appcast 'https://www.ergonis.com/products/typinator/history.html'
  name 'Typinator'
  homepage 'https://www.ergonis.com/'

  app 'Typinator.app'
end
