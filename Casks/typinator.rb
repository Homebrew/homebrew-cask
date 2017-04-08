cask 'typinator' do
  version '7.1'
  sha256 '8cf28e133d3e555b6f14ddde0b4b1177c7df20cccc7769a5318fdbb9ff5422d5'

  url "http://www.ergonis.com/downloads/products/typinator/Typinator#{version.no_dots}-Install.dmg",
      user_agent: :fake
  appcast 'http://www.ergonis.com/products/typinator/history.html',
          checkpoint: 'aad99f2f3863403c556b5124780f2d03d69d25296a5223486ae797428a228e17'
  name 'Typinator'
  homepage 'http://www.ergonis.com/'

  accessibility_access true

  app 'Typinator.app'
end
