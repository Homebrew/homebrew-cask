cask 'typinator' do
  version '7.4'
  sha256 '1309f6758aea7d52c760cd7fcf0101795be295600c02870de533f7c0d61660d4'

  url "http://www.ergonis.com/downloads/products/typinator/Typinator#{version.no_dots}-Install.dmg",
      user_agent: :fake
  appcast 'http://www.ergonis.com/products/typinator/history.html',
          checkpoint: '9ee68c5c8d1e1ac1bd386e67c878caf615bf9a33376e535867efa46056eb8f45'
  name 'Typinator'
  homepage 'http://www.ergonis.com/'

  accessibility_access true

  app 'Typinator.app'
end
