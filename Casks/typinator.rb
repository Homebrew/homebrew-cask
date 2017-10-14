cask 'typinator' do
  version '7.3'
  sha256 '654de96328eb766b3879ebed83b2f6479b19614f3978958f054fd1fb227f802d'

  url "http://www.ergonis.com/downloads/products/typinator/Typinator#{version.no_dots}-Install.dmg",
      user_agent: :fake
  appcast 'http://www.ergonis.com/products/typinator/history.html',
          checkpoint: '3af9687b6004c0ba8a71f3b1a227ad70544428189abdccdd44d260b153f1e707'
  name 'Typinator'
  homepage 'http://www.ergonis.com/'

  accessibility_access true

  app 'Typinator.app'
end
