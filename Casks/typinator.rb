cask 'typinator' do
  version '8.3'
  sha256 'ffee1891dd797857cadbda445177f7b6aacafbfb5f8420becaf5ec64bd860313'

  url "https://www.ergonis.com/downloads/products/typinator/Typinator#{version.no_dots}-Install.dmg",
      user_agent: :fake
  appcast 'https://update.ergonis.com/vck/typinator.xml'
  name 'Typinator'
  homepage 'https://www.ergonis.com/'

  app 'Typinator.app'
end
