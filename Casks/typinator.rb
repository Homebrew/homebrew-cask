cask 'typinator' do
  version '7.8'
  sha256 'a88c34bfbac7b3c673817dfeb0c2d946e1f737ad43a5d349e6d6916a214ca9a2'

  url "https://www.ergonis.com/downloads/products/typinator/Typinator#{version.no_dots}-Install.dmg",
      user_agent: :fake
  appcast 'https://www.ergonis.com/products/typinator/history.html'
  name 'Typinator'
  homepage 'https://www.ergonis.com/'

  app 'Typinator.app'
end
